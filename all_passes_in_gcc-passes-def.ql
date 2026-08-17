  /**
 * @name Macros in passes.def
 * @kind table
 * @id cpp/gcc/passes-def
 */

import cpp

from MacroInvocation mi
where mi.getFile().getRelativePath().regexpMatch(".*passes\\.def$")
select
  mi.getMacroName(),
  mi.getFile().getRelativePath(),
  mi.getLocation().getStartLine() as location,
  mi.toString()
order by location