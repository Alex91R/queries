/**
 * @name GCC generated -f options
 * @description Finds generated GCC option-name string literals that look like -f options.
 * @kind table
 * @id cpp/gcc/option-facts-generated
 */

import cpp

from StringLiteral s
where
  (
    s.getFile().getRelativePath().regexpMatch(".*options\\.c$")
    or s.getFile().getRelativePath().regexpMatch(".*options\\.cc$")
  )
  and s.getValue().regexpMatch("f[a-zA-Z0-9_+=-].*")
select
  "-" + s.getValue() as flag,
  s.getFile().getRelativePath() as file,
  s.getLocation().getStartLine() as line,
  s
order by flag