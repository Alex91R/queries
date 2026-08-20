/**
 * @name Find gcc/common.opt
 * @kind table
 * @id cpp/gcc/common-opt
 */

import cpp

from File f
where
  f.getRelativePath().regexpMatch(".*(^|/)gcc/common\\.opt$")
  or f.getRelativePath().regexpMatch(".*common\\.opt$")
select
  f,
  f.getRelativePath(),
  f.getAbsolutePath()