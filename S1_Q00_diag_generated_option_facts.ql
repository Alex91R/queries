/**
 * @name S1 Q00 diagnostic generated GCC option facts
 * @description Lists source-derived option facts generated from gcc/common.opt.
 * @kind table
 */

import cpp
import S1_GccOptionFacts

from string optionName, string visibleVarName, string storageFieldName
where gccOptionFact(optionName, visibleVarName, storageFieldName)
select
  optionName as option,
  visibleVarName,
  storageFieldName
order by option