/**
 * @name GCC -f options listed in gcc/config/auto-host.h
 * @description Lists all -f options defined in gcc/config/auto-host.h.
 * @kind table
 * @id cpp/gcc/option-facts-automated
 */

import cpp

from Macro m, string option, string accessName, string accessStructFieldName
where
  m.getName().matches("flag_%") and
  accessName = m.getName() and
  accessStructFieldName = m.getBody() and
  option = "-f" + accessName.suffix(5).replaceAll("_", "-")
select option, accessName, accessStructFieldName.suffix(15)

// create a predicate of it
