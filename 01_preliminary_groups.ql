/**
 * @name GroupTuner preliminary flag-pass groups
 * @description Preliminary pass groups for GCC options. Maps GCC optimization options to GCC pass classes through option accesses and pass call graph.
 *
 * @kind table
 * @id cpp/gcc/preliminary-groups
 */

import cpp
import GccOptionFacts

/**
 * A direct static function call.
 *
 * CodeQL's C/C++ FunctionCall::getTarget() gives the function called
 * when the target is known at compile time.
 */
predicate directCall(Function caller, Function callee) {
  exists(FunctionCall c |
    c.getEnclosingFunction() = caller and
    c.getTarget() = callee
  )
}

/**
 * GCC pass classes in gcc-9.2.0 are usually classes such as:
 *
 *   pass_rtl_pre
 *   pass_tree_loop
 *   pass_ipa_cp
 *
 * and they inherit from pass base classes such as:
 *
 *   rtl_opt_pass
 *   gimple_opt_pass
 *   ipa_opt_pass
 *   simple_ipa_opt_pass
 */
class GccPassClass extends Class {
  GccPassClass() {
    this.getName().regexpMatch("pass_.*") and
    exists(Class base |
      base = this.getABaseClass*() and
      (
        base.getName() = "opt_pass" or
        base.getName() = "rtl_opt_pass" or
        base.getName() = "gimple_opt_pass" or
        base.getName() = "ipa_opt_pass" or
        base.getName() = "simple_ipa_opt_pass"
      )
    )
  }

  string getPassKey() {
    result = this.getName()
  }
}

/**
 * The gate/execute methods of a GCC pass.
 *
 * The GroupTuner paper specifically says each pass has gate and execute
 * functions, and options may affect those functions.
 */
predicate passEntryMethod(GccPassClass pass, MemberFunction m, string role) {
  pass.getAMemberFunction() = m and
  (
    role = "gate" and m.getName() = "gate"
    or
    role = "execute" and m.getName() = "execute"
  )
}

/**
 * A pass entry method reaches a function if:
 *   1. it is that function, or
 *   2. it transitively calls that function.
 */
predicate passReachesFunction(MemberFunction passMethod, Function reached) {
  reached = passMethod
  or
  directCall+(passMethod, reached)
}

/**
 * An access expression is treated as a use of a GroupTuner option if the
 * accessed variable/field name matches the option mapping.
 */
predicate optionAccess(string option, VariableAccess access, Function enclosingFunction) {
  exists(string accessName |
    gtOptionAccessName(option, accessName) and
    access.getEnclosingFunction() = enclosingFunction and
    (
      access.getTarget().getName() = accessName
      or
      access.toString() = accessName
    )
  )
}

/**
 * Preliminary GroupTuner relation:
 *
 *   option belongs to preliminary pass group pass
 *
 * if the option is accessed in a function reachable from the pass gate/execute method.
 */
predicate preliminaryGroup(
  string passKey,
  string option,
  string role,
  MemberFunction passMethod,
  Function optionUseFunction,
  VariableAccess access
) {
  exists(GccPassClass pass |
    pass.getPassKey() = passKey and
    passEntryMethod(pass, passMethod, role) and
    optionAccess(option, access, optionUseFunction) and
    passReachesFunction(passMethod, optionUseFunction)
  )
}

from
  string passKey,
  string option,
  string role,
  MemberFunction passMethod,
  Function optionUseFunction,
  VariableAccess access
where
  preliminaryGroup(passKey, option, role, passMethod, optionUseFunction, access)
select
  passKey,
  option,
  role,
  passMethod.getQualifiedName(),
  optionUseFunction.getQualifiedName(),
  access.getFile().getRelativePath(),
  access.getLocation().getStartLine(),
  access.toString()