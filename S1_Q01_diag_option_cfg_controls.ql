/**
 * @name S1 Q01 diagnostic option CFG-control uses
 * @description Finds a few selected GCC optimization option variables when they occur inside CFG-controlling expressions.
 * @kind table
 */

import cpp
import semmle.code.cpp.controlflow.ControlFlowGraph
import semmle.code.cpp.controlflow.BasicBlocks

/**
 * Small diagnostic seed only.
 * Later this should be generated from the validated GT206 reference.
 */
predicate seedOption(string optionName, string visibleVarName, string storageFieldName) {
  optionName = "-fgcse" and
  visibleVarName = "flag_gcse" and
  storageFieldName = "x_flag_gcse"
  or
  optionName = "-finline-functions" and
  visibleVarName = "flag_inline_functions" and
  storageFieldName = "x_flag_inline_functions"
  or
  optionName = "-ftree-dce" and
  visibleVarName = "flag_tree_dce" and
  storageFieldName = "x_flag_tree_dce"
}

/**
 * The option variable may appear directly as flag_x,
 * or after macro expansion as global_options.x_flag_x.
 */
predicate optionVariableAccess(
  string optionName,
  string visibleVarName,
  string storageFieldName,
  VariableAccess access,
  Variable target
) {
  seedOption(optionName, visibleVarName, storageFieldName) and
  target = access.getTarget() and
  (
    target.getName() = visibleVarName or
    target.getName() = storageFieldName
  )
}

/**
 * The variable access occurs inside the controlling expression
 * of an if/while/for/switch-style control structure.
 */
predicate accessInsideControlCondition(VariableAccess access, ControlStructure cs, Expr cond) {
  cond = cs.getControllingExpr() and
  cond.getAChild*() = access
}

from
  string optionName, string visibleVarName, string storageFieldName,
  VariableAccess access, Variable target,
  ControlStructure cs, Expr cond,
  Function enclosingFunction,
  BasicBlock conditionBlock,
  ControlFlowNode trueSucc, ControlFlowNode falseSucc
where
  optionVariableAccess(optionName, visibleVarName, storageFieldName, access, target) and
  accessInsideControlCondition(access, cs, cond) and

  enclosingFunction = access.getEnclosingFunction() and

  // This is the CFG part: place the condition in a basic block
  // and require branch successors.
  conditionBlock = cond.getBasicBlock() and
  trueSucc = cond.getATrueSuccessor() and
  falseSucc = cond.getAFalseSuccessor()
select
  optionName,
  visibleVarName,
  storageFieldName,
  target.getName() as actualTarget,
  access.toString() as accessText,
  cond.toString() as controllingCondition,
  cs.getAPrimaryQlClass() as controlStructureKind,
  enclosingFunction.getQualifiedName() as functionName,
  access.getFile().getRelativePath() as file,
  access.getLocation().getStartLine() as line,
  conditionBlock,
  trueSucc.getLocation() as trueSuccessor,
  falseSucc.getLocation() as falseSuccessor
order by
optionName