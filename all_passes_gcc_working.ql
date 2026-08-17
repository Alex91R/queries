/**
 * @name All passes in GCC
 * @description This query finds all the passes in GCC by looking for classes that extend the base pass classes (opt_pass, rtl_opt_pass, gimple_opt_pass, ipa_opt_pass, simple_ipa_opt_pass) and have names starting with "pass_".
 * @kind problem
 * @problem.severity warning
 * @id cpp/gcc/all-passes
 * @tags gcc, passes
 */
import cpp

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

from GccPassClass pass 
select pass.getAFile(), pass.getPassKey(), pass.getLocation(), pass.getABaseClass+().getName()