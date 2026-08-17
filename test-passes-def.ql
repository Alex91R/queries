/**
 * @name Find files containing pass in filename
 * @kind table
 * @id test
 */

import cpp

from File f
where f.getRelativePath().regexpMatch(".*pass.*")
select f, f.getRelativePath() as path
order by path