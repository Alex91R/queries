/**
 * @name GCC passes listed in passes.def
 * @description Lists pass entries scheduled in gcc/passes.def.
 * !Currently not working!
 * @kind table
 * @id cpp/gcc/passes-def
 */

import cpp

from MacroInvocation mi//, string passName
where
  mi.getFile().getRelativePath().matches("%/passes.def") and
  (
    mi.getMacroName() = "NEXT_PASS" or
    mi.getMacroName() = "NEXT_PASS_WITH_ARG" or
    mi.getMacroName() = "NEXT_PASS_NUM"
  ) //and
  //passName = mi.getUnexpandedArgument(0)
select
  //passName,
  mi.getFile().getRelativePath(),
  mi.getMacroName(),
  mi.getLocation().getStartLine() as startLine
order by startLine