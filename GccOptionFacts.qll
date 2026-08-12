/**
 * @name GccOptionFacts
 * @description Facts about GCC options and their corresponding access names.
 * //@kind data
 * @id GccOptionFacts
 */

import cpp

/**
 * Facts generated from:
 *   1. GroupTuner/Space/all_opts.txt
 *   2. gcc-9.2.0/gcc/common.opt
 *
 * IMPORTANT:
 * Do not hand-write all 206 mappings if you want serious replication.
 * Generate this file automatically from common.opt and all_opts.txt.
 */
predicate gtOptionAccessName(string option, string accessName) {
  // Examples only. The real file should contain all 206 options.

  option = "-fgcse" and accessName = "flag_gcse"
  or option = "-fgcse" and accessName = "x_flag_gcse"

  or option = "-fgcse-lm" and accessName = "flag_gcse_lm"
  or option = "-fgcse-lm" and accessName = "x_flag_gcse_lm"

  or option = "-fgcse-las" and accessName = "flag_gcse_las"
  or option = "-fgcse-las" and accessName = "x_flag_gcse_las"

  or option = "-finline-functions" and accessName = "flag_inline_functions"
  or option = "-finline-functions" and accessName = "x_flag_inline_functions"

  or option = "-ftree-loop-vectorize" and accessName = "flag_tree_loop_vectorize"
  or option = "-ftree-loop-vectorize" and accessName = "x_flag_tree_loop_vectorize"
}