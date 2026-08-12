/**
 * @name Compilation flags
 * @description Finds compilation flags passed to the compiler during a compilation.
 * @kind problem
 * @problem.severity warning
 * @id cpp/compilation-flags
 */

import cpp

from Compilation c, string flag

where
  flag = c.getAnArgument() and //Gets an argument passed to the extractor on this invocation.Type - string;
  (flag.regexpMatch("-O.*") or 
  flag.regexpMatch("-f.*") 
  )

select c.getAFileCompiled(), flag // Gets a file compiled during this invocation. Type - File