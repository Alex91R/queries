/**
 * @name GCC option facts generated from gcc/common.opt
 * @description Generated Stage-0 facts: option -> Var(...) variable.
 */

predicate gccOptionFact(
  string optionName,
  string visibleVarName,
  string storageFieldName
) {
  optionName = "-faggressive-loop-optimizations" and visibleVarName = "flag_aggressive_loop_optimizations" and storageFieldName = "x_flag_aggressive_loop_optimizations"
  or
  optionName = "-falign-functions" and visibleVarName = "flag_align_functions" and storageFieldName = "x_flag_align_functions"
  or
  optionName = "-falign-functions=" and visibleVarName = "str_align_functions" and storageFieldName = "x_str_align_functions"
  or
  optionName = "-falign-jumps" and visibleVarName = "flag_align_jumps" and storageFieldName = "x_flag_align_jumps"
  or
  optionName = "-falign-jumps=" and visibleVarName = "str_align_jumps" and storageFieldName = "x_str_align_jumps"
  or
  optionName = "-falign-labels" and visibleVarName = "flag_align_labels" and storageFieldName = "x_flag_align_labels"
  or
  optionName = "-falign-labels=" and visibleVarName = "str_align_labels" and storageFieldName = "x_str_align_labels"
  or
  optionName = "-falign-loops" and visibleVarName = "flag_align_loops" and storageFieldName = "x_flag_align_loops"
  or
  optionName = "-falign-loops=" and visibleVarName = "str_align_loops" and storageFieldName = "x_str_align_loops"
  or
  optionName = "-fassociative-math" and visibleVarName = "flag_associative_math" and storageFieldName = "x_flag_associative_math"
  or
  optionName = "-fasynchronous-unwind-tables" and visibleVarName = "flag_asynchronous_unwind_tables" and storageFieldName = "x_flag_asynchronous_unwind_tables"
  or
  optionName = "-fauto-inc-dec" and visibleVarName = "flag_auto_inc_dec" and storageFieldName = "x_flag_auto_inc_dec"
  or
  optionName = "-fbranch-count-reg" and visibleVarName = "flag_branch_on_count_reg" and storageFieldName = "x_flag_branch_on_count_reg"
  or
  optionName = "-fbranch-probabilities" and visibleVarName = "flag_branch_probabilities" and storageFieldName = "x_flag_branch_probabilities"
  or
  optionName = "-fbranch-target-load-optimize" and visibleVarName = "flag_branch_target_load_optimize" and storageFieldName = "x_flag_branch_target_load_optimize"
  or
  optionName = "-fbranch-target-load-optimize2" and visibleVarName = "flag_branch_target_load_optimize2" and storageFieldName = "x_flag_branch_target_load_optimize2"
  or
  optionName = "-fbtr-bb-exclusive" and visibleVarName = "flag_btr_bb_exclusive" and storageFieldName = "x_flag_btr_bb_exclusive"
  or
  optionName = "-fcode-hoisting" and visibleVarName = "flag_code_hoisting" and storageFieldName = "x_flag_code_hoisting"
  or
  optionName = "-fcombine-stack-adjustments" and visibleVarName = "flag_combine_stack_adjustments" and storageFieldName = "x_flag_combine_stack_adjustments"
  or
  optionName = "-fcompare-elim" and visibleVarName = "flag_compare_elim_after_reload" and storageFieldName = "x_flag_compare_elim_after_reload"
  or
  optionName = "-fconserve-stack" and visibleVarName = "flag_conserve_stack" and storageFieldName = "x_flag_conserve_stack"
  or
  optionName = "-fcprop-registers" and visibleVarName = "flag_cprop_registers" and storageFieldName = "x_flag_cprop_registers"
  or
  optionName = "-fcrossjumping" and visibleVarName = "flag_crossjumping" and storageFieldName = "x_flag_crossjumping"
  or
  optionName = "-fcse-follow-jumps" and visibleVarName = "flag_cse_follow_jumps" and storageFieldName = "x_flag_cse_follow_jumps"
  or
  optionName = "-fcx-fortran-rules" and visibleVarName = "flag_cx_fortran_rules" and storageFieldName = "x_flag_cx_fortran_rules"
  or
  optionName = "-fcx-limited-range" and visibleVarName = "flag_cx_limited_range" and storageFieldName = "x_flag_cx_limited_range"
  or
  optionName = "-fdce" and visibleVarName = "flag_dce" and storageFieldName = "x_flag_dce"
  or
  optionName = "-fdelayed-branch" and visibleVarName = "flag_delayed_branch" and storageFieldName = "x_flag_delayed_branch"
  or
  optionName = "-fdelete-dead-exceptions" and visibleVarName = "flag_delete_dead_exceptions" and storageFieldName = "x_flag_delete_dead_exceptions"
  or
  optionName = "-fdelete-null-pointer-checks" and visibleVarName = "flag_delete_null_pointer_checks" and storageFieldName = "x_flag_delete_null_pointer_checks"
  or
  optionName = "-fdevirtualize" and visibleVarName = "flag_devirtualize" and storageFieldName = "x_flag_devirtualize"
  or
  optionName = "-fdevirtualize-speculatively" and visibleVarName = "flag_devirtualize_speculatively" and storageFieldName = "x_flag_devirtualize_speculatively"
  or
  optionName = "-fdse" and visibleVarName = "flag_dse" and storageFieldName = "x_flag_dse"
  or
  optionName = "-fearly-inlining" and visibleVarName = "flag_early_inlining" and storageFieldName = "x_flag_early_inlining"
  or
  optionName = "-fexceptions" and visibleVarName = "flag_exceptions" and storageFieldName = "x_flag_exceptions"
  or
  optionName = "-fexpensive-optimizations" and visibleVarName = "flag_expensive_optimizations" and storageFieldName = "x_flag_expensive_optimizations"
  or
  optionName = "-ffinite-math-only" and visibleVarName = "flag_finite_math_only" and storageFieldName = "x_flag_finite_math_only"
  or
  optionName = "-ffloat-store" and visibleVarName = "flag_float_store" and storageFieldName = "x_flag_float_store"
  or
  optionName = "-fforward-propagate" and visibleVarName = "flag_forward_propagate" and storageFieldName = "x_flag_forward_propagate"
  or
  optionName = "-ffp-contract=" and visibleVarName = "flag_fp_contract_mode" and storageFieldName = "x_flag_fp_contract_mode"
  or
  optionName = "-ffp-int-builtin-inexact" and visibleVarName = "flag_fp_int_builtin_inexact" and storageFieldName = "x_flag_fp_int_builtin_inexact"
  or
  optionName = "-fgcse" and visibleVarName = "flag_gcse" and storageFieldName = "x_flag_gcse"
  or
  optionName = "-fgcse-after-reload" and visibleVarName = "flag_gcse_after_reload" and storageFieldName = "x_flag_gcse_after_reload"
  or
  optionName = "-fgcse-las" and visibleVarName = "flag_gcse_las" and storageFieldName = "x_flag_gcse_las"
  or
  optionName = "-fgcse-lm" and visibleVarName = "flag_gcse_lm" and storageFieldName = "x_flag_gcse_lm"
  or
  optionName = "-fgcse-sm" and visibleVarName = "flag_gcse_sm" and storageFieldName = "x_flag_gcse_sm"
  or
  optionName = "-fgraphite-identity" and visibleVarName = "flag_graphite_identity" and storageFieldName = "x_flag_graphite_identity"
  or
  optionName = "-fguess-branch-probability" and visibleVarName = "flag_guess_branch_prob" and storageFieldName = "x_flag_guess_branch_prob"
  or
  optionName = "-fhoist-adjacent-loads" and visibleVarName = "flag_hoist_adjacent_loads" and storageFieldName = "x_flag_hoist_adjacent_loads"
  or
  optionName = "-fif-conversion" and visibleVarName = "flag_if_conversion" and storageFieldName = "x_flag_if_conversion"
  or
  optionName = "-fif-conversion2" and visibleVarName = "flag_if_conversion2" and storageFieldName = "x_flag_if_conversion2"
  or
  optionName = "-findirect-inlining" and visibleVarName = "flag_indirect_inlining" and storageFieldName = "x_flag_indirect_inlining"
  or
  optionName = "-finline-atomics" and visibleVarName = "flag_inline_atomics" and storageFieldName = "x_flag_inline_atomics"
  or
  optionName = "-finline-functions" and visibleVarName = "flag_inline_functions" and storageFieldName = "x_flag_inline_functions"
  or
  optionName = "-finline-functions-called-once" and visibleVarName = "flag_inline_functions_called_once" and storageFieldName = "x_flag_inline_functions_called_once"
  or
  optionName = "-finline-small-functions" and visibleVarName = "flag_inline_small_functions" and storageFieldName = "x_flag_inline_small_functions"
  or
  optionName = "-fipa-bit-cp" and visibleVarName = "flag_ipa_bit_cp" and storageFieldName = "x_flag_ipa_bit_cp"
  or
  optionName = "-fipa-cp" and visibleVarName = "flag_ipa_cp" and storageFieldName = "x_flag_ipa_cp"
  or
  optionName = "-fipa-cp-clone" and visibleVarName = "flag_ipa_cp_clone" and storageFieldName = "x_flag_ipa_cp_clone"
  or
  optionName = "-fipa-icf" and visibleVarName = "flag_ipa_icf" and storageFieldName = "x_flag_ipa_icf"
  or
  optionName = "-fipa-icf-functions" and visibleVarName = "flag_ipa_icf_functions" and storageFieldName = "x_flag_ipa_icf_functions"
  or
  optionName = "-fipa-icf-variables" and visibleVarName = "flag_ipa_icf_variables" and storageFieldName = "x_flag_ipa_icf_variables"
  or
  optionName = "-fipa-profile" and visibleVarName = "flag_ipa_profile" and storageFieldName = "x_flag_ipa_profile"
  or
  optionName = "-fipa-pta" and visibleVarName = "flag_ipa_pta" and storageFieldName = "x_flag_ipa_pta"
  or
  optionName = "-fipa-pure-const" and visibleVarName = "flag_ipa_pure_const" and storageFieldName = "x_flag_ipa_pure_const"
  or
  optionName = "-fipa-ra" and visibleVarName = "flag_ipa_ra" and storageFieldName = "x_flag_ipa_ra"
  or
  optionName = "-fipa-reference" and visibleVarName = "flag_ipa_reference" and storageFieldName = "x_flag_ipa_reference"
  or
  optionName = "-fipa-reference-addressable" and visibleVarName = "flag_ipa_reference_addressable" and storageFieldName = "x_flag_ipa_reference_addressable"
  or
  optionName = "-fipa-sra" and visibleVarName = "flag_ipa_sra" and storageFieldName = "x_flag_ipa_sra"
  or
  optionName = "-fipa-stack-alignment" and visibleVarName = "flag_ipa_stack_alignment" and storageFieldName = "x_flag_ipa_stack_alignment"
  or
  optionName = "-fipa-vrp" and visibleVarName = "flag_ipa_vrp" and storageFieldName = "x_flag_ipa_vrp"
  or
  optionName = "-fira-algorithm=" and visibleVarName = "flag_ira_algorithm" and storageFieldName = "x_flag_ira_algorithm"
  or
  optionName = "-fira-hoist-pressure" and visibleVarName = "flag_ira_hoist_pressure" and storageFieldName = "x_flag_ira_hoist_pressure"
  or
  optionName = "-fira-loop-pressure" and visibleVarName = "flag_ira_loop_pressure" and storageFieldName = "x_flag_ira_loop_pressure"
  or
  optionName = "-fira-region=" and visibleVarName = "flag_ira_region" and storageFieldName = "x_flag_ira_region"
  or
  optionName = "-fira-share-save-slots" and visibleVarName = "flag_ira_share_save_slots" and storageFieldName = "x_flag_ira_share_save_slots"
  or
  optionName = "-fira-share-spill-slots" and visibleVarName = "flag_ira_share_spill_slots" and storageFieldName = "x_flag_ira_share_spill_slots"
  or
  optionName = "-fisolate-erroneous-paths-attribute" and visibleVarName = "flag_isolate_erroneous_paths_attribute" and storageFieldName = "x_flag_isolate_erroneous_paths_attribute"
  or
  optionName = "-fisolate-erroneous-paths-dereference" and visibleVarName = "flag_isolate_erroneous_paths_dereference" and storageFieldName = "x_flag_isolate_erroneous_paths_dereference"
  or
  optionName = "-fivopts" and visibleVarName = "flag_ivopts" and storageFieldName = "x_flag_ivopts"
  or
  optionName = "-fjump-tables" and visibleVarName = "flag_jump_tables" and storageFieldName = "x_flag_jump_tables"
  or
  optionName = "-fkeep-gc-roots-live" and visibleVarName = "flag_keep_gc_roots_live" and storageFieldName = "x_flag_keep_gc_roots_live"
  or
  optionName = "-flifetime-dse" and visibleVarName = "flag_lifetime_dse,2" and storageFieldName = "x_flag_lifetime_dse,2"
  or
  optionName = "-flifetime-dse=" and visibleVarName = "flag_lifetime_dse" and storageFieldName = "x_flag_lifetime_dse"
  or
  optionName = "-flimit-function-alignment" and visibleVarName = "flag_limit_function_alignment" and storageFieldName = "x_flag_limit_function_alignment"
  or
  optionName = "-flive-patching=" and visibleVarName = "flag_live_patching" and storageFieldName = "x_flag_live_patching"
  or
  optionName = "-flive-range-shrinkage" and visibleVarName = "flag_live_range_shrinkage" and storageFieldName = "x_flag_live_range_shrinkage"
  or
  optionName = "-floop-interchange" and visibleVarName = "flag_loop_interchange" and storageFieldName = "x_flag_loop_interchange"
  or
  optionName = "-floop-nest-optimize" and visibleVarName = "flag_loop_nest_optimize" and storageFieldName = "x_flag_loop_nest_optimize"
  or
  optionName = "-floop-parallelize-all" and visibleVarName = "flag_loop_parallelize_all" and storageFieldName = "x_flag_loop_parallelize_all"
  or
  optionName = "-floop-unroll-and-jam" and visibleVarName = "flag_unroll_jam" and storageFieldName = "x_flag_unroll_jam"
  or
  optionName = "-flra-remat" and visibleVarName = "flag_lra_remat" and storageFieldName = "x_flag_lra_remat"
  or
  optionName = "-fmath-errno" and visibleVarName = "flag_errno_math" and storageFieldName = "x_flag_errno_math"
  or
  optionName = "-fmodulo-sched" and visibleVarName = "flag_modulo_sched" and storageFieldName = "x_flag_modulo_sched"
  or
  optionName = "-fmodulo-sched-allow-regmoves" and visibleVarName = "flag_modulo_sched_allow_regmoves" and storageFieldName = "x_flag_modulo_sched_allow_regmoves"
  or
  optionName = "-fmove-loop-invariants" and visibleVarName = "flag_move_loop_invariants" and storageFieldName = "x_flag_move_loop_invariants"
  or
  optionName = "-fnon-call-exceptions" and visibleVarName = "flag_non_call_exceptions" and storageFieldName = "x_flag_non_call_exceptions"
  or
  optionName = "-fomit-frame-pointer" and visibleVarName = "flag_omit_frame_pointer" and storageFieldName = "x_flag_omit_frame_pointer"
  or
  optionName = "-fopt-info" and visibleVarName = "flag_opt_info" and storageFieldName = "x_flag_opt_info"
  or
  optionName = "-foptimize-sibling-calls" and visibleVarName = "flag_optimize_sibling_calls" and storageFieldName = "x_flag_optimize_sibling_calls"
  or
  optionName = "-foptimize-strlen" and visibleVarName = "flag_optimize_strlen" and storageFieldName = "x_flag_optimize_strlen"
  or
  optionName = "-fpack-struct" and visibleVarName = "flag_pack_struct" and storageFieldName = "x_flag_pack_struct"
  or
  optionName = "-fpartial-inlining" and visibleVarName = "flag_partial_inlining" and storageFieldName = "x_flag_partial_inlining"
  or
  optionName = "-fpeel-loops" and visibleVarName = "flag_peel_loops" and storageFieldName = "x_flag_peel_loops"
  or
  optionName = "-fpeephole" and visibleVarName = "flag_no_peephole,0" and storageFieldName = "x_flag_no_peephole,0"
  or
  optionName = "-fpeephole2" and visibleVarName = "flag_peephole2" and storageFieldName = "x_flag_peephole2"
  or
  optionName = "-fplt" and visibleVarName = "flag_plt" and storageFieldName = "x_flag_plt"
  or
  optionName = "-fpredictive-commoning" and visibleVarName = "flag_predictive_commoning" and storageFieldName = "x_flag_predictive_commoning"
  or
  optionName = "-fprefetch-loop-arrays" and visibleVarName = "flag_prefetch_loop_arrays" and storageFieldName = "x_flag_prefetch_loop_arrays"
  or
  optionName = "-freciprocal-math" and visibleVarName = "flag_reciprocal_math" and storageFieldName = "x_flag_reciprocal_math"
  or
  optionName = "-freg-struct-return" and visibleVarName = "flag_pcc_struct_return,0" and storageFieldName = "x_flag_pcc_struct_return,0"
  or
  optionName = "-frename-registers" and visibleVarName = "flag_rename_registers" and storageFieldName = "x_flag_rename_registers"
  or
  optionName = "-freorder-blocks" and visibleVarName = "flag_reorder_blocks" and storageFieldName = "x_flag_reorder_blocks"
  or
  optionName = "-freorder-blocks-algorithm=" and visibleVarName = "flag_reorder_blocks_algorithm" and storageFieldName = "x_flag_reorder_blocks_algorithm"
  or
  optionName = "-freorder-blocks-and-partition" and visibleVarName = "flag_reorder_blocks_and_partition" and storageFieldName = "x_flag_reorder_blocks_and_partition"
  or
  optionName = "-freorder-functions" and visibleVarName = "flag_reorder_functions" and storageFieldName = "x_flag_reorder_functions"
  or
  optionName = "-frerun-cse-after-loop" and visibleVarName = "flag_rerun_cse_after_loop" and storageFieldName = "x_flag_rerun_cse_after_loop"
  or
  optionName = "-freschedule-modulo-scheduled-loops" and visibleVarName = "flag_resched_modulo_sched" and storageFieldName = "x_flag_resched_modulo_sched"
  or
  optionName = "-frounding-math" and visibleVarName = "flag_rounding_math" and storageFieldName = "x_flag_rounding_math"
  or
  optionName = "-fsave-optimization-record" and visibleVarName = "flag_save_optimization_record" and storageFieldName = "x_flag_save_optimization_record"
  or
  optionName = "-fsched-critical-path-heuristic" and visibleVarName = "flag_sched_critical_path_heuristic" and storageFieldName = "x_flag_sched_critical_path_heuristic"
  or
  optionName = "-fsched-dep-count-heuristic" and visibleVarName = "flag_sched_dep_count_heuristic" and storageFieldName = "x_flag_sched_dep_count_heuristic"
  or
  optionName = "-fsched-group-heuristic" and visibleVarName = "flag_sched_group_heuristic" and storageFieldName = "x_flag_sched_group_heuristic"
  or
  optionName = "-fsched-interblock" and visibleVarName = "flag_schedule_interblock" and storageFieldName = "x_flag_schedule_interblock"
  or
  optionName = "-fsched-last-insn-heuristic" and visibleVarName = "flag_sched_last_insn_heuristic" and storageFieldName = "x_flag_sched_last_insn_heuristic"
  or
  optionName = "-fsched-pressure" and visibleVarName = "flag_sched_pressure" and storageFieldName = "x_flag_sched_pressure"
  or
  optionName = "-fsched-rank-heuristic" and visibleVarName = "flag_sched_rank_heuristic" and storageFieldName = "x_flag_sched_rank_heuristic"
  or
  optionName = "-fsched-spec" and visibleVarName = "flag_schedule_speculative" and storageFieldName = "x_flag_schedule_speculative"
  or
  optionName = "-fsched-spec-insn-heuristic" and visibleVarName = "flag_sched_spec_insn_heuristic" and storageFieldName = "x_flag_sched_spec_insn_heuristic"
  or
  optionName = "-fsched-spec-load" and visibleVarName = "flag_schedule_speculative_load" and storageFieldName = "x_flag_schedule_speculative_load"
  or
  optionName = "-fsched-spec-load-dangerous" and visibleVarName = "flag_schedule_speculative_load_dangerous" and storageFieldName = "x_flag_schedule_speculative_load_dangerous"
  or
  optionName = "-fsched2-use-superblocks" and visibleVarName = "flag_sched2_use_superblocks" and storageFieldName = "x_flag_sched2_use_superblocks"
  or
  optionName = "-fschedule-fusion" and visibleVarName = "flag_schedule_fusion" and storageFieldName = "x_flag_schedule_fusion"
  or
  optionName = "-fschedule-insns" and visibleVarName = "flag_schedule_insns" and storageFieldName = "x_flag_schedule_insns"
  or
  optionName = "-fschedule-insns2" and visibleVarName = "flag_schedule_insns_after_reload" and storageFieldName = "x_flag_schedule_insns_after_reload"
  or
  optionName = "-fsection-anchors" and visibleVarName = "flag_section_anchors" and storageFieldName = "x_flag_section_anchors"
  or
  optionName = "-fsel-sched-pipelining" and visibleVarName = "flag_sel_sched_pipelining" and storageFieldName = "x_flag_sel_sched_pipelining"
  or
  optionName = "-fsel-sched-pipelining-outer-loops" and visibleVarName = "flag_sel_sched_pipelining_outer_loops" and storageFieldName = "x_flag_sel_sched_pipelining_outer_loops"
  or
  optionName = "-fsel-sched-reschedule-pipelined" and visibleVarName = "flag_sel_sched_reschedule_pipelined" and storageFieldName = "x_flag_sel_sched_reschedule_pipelined"
  or
  optionName = "-fselective-scheduling2" and visibleVarName = "flag_selective_scheduling2" and storageFieldName = "x_flag_selective_scheduling2"
  or
  optionName = "-fshrink-wrap" and visibleVarName = "flag_shrink_wrap" and storageFieldName = "x_flag_shrink_wrap"
  or
  optionName = "-fshrink-wrap-separate" and visibleVarName = "flag_shrink_wrap_separate" and storageFieldName = "x_flag_shrink_wrap_separate"
  or
  optionName = "-fsignaling-nans" and visibleVarName = "flag_signaling_nans" and storageFieldName = "x_flag_signaling_nans"
  or
  optionName = "-fsigned-zeros" and visibleVarName = "flag_signed_zeros" and storageFieldName = "x_flag_signed_zeros"
  or
  optionName = "-fsimd-cost-model=" and visibleVarName = "flag_simd_cost_model" and storageFieldName = "x_flag_simd_cost_model"
  or
  optionName = "-fsingle-precision-constant" and visibleVarName = "flag_single_precision_constant" and storageFieldName = "x_flag_single_precision_constant"
  or
  optionName = "-fsplit-ivs-in-unroller" and visibleVarName = "flag_split_ivs_in_unroller" and storageFieldName = "x_flag_split_ivs_in_unroller"
  or
  optionName = "-fsplit-loops" and visibleVarName = "flag_split_loops" and storageFieldName = "x_flag_split_loops"
  or
  optionName = "-fsplit-paths" and visibleVarName = "flag_split_paths" and storageFieldName = "x_flag_split_paths"
  or
  optionName = "-fsplit-wide-types" and visibleVarName = "flag_split_wide_types" and storageFieldName = "x_flag_split_wide_types"
  or
  optionName = "-fssa-backprop" and visibleVarName = "flag_ssa_backprop" and storageFieldName = "x_flag_ssa_backprop"
  or
  optionName = "-fssa-phiopt" and visibleVarName = "flag_ssa_phiopt" and storageFieldName = "x_flag_ssa_phiopt"
  or
  optionName = "-fstack-clash-protection" and visibleVarName = "flag_stack_clash_protection" and storageFieldName = "x_flag_stack_clash_protection"
  or
  optionName = "-fstack-protector" and visibleVarName = "flag_stack_protect, 1" and storageFieldName = "x_flag_stack_protect, 1"
  or
  optionName = "-fstack-protector-all" and visibleVarName = "flag_stack_protect, 2" and storageFieldName = "x_flag_stack_protect, 2"
  or
  optionName = "-fstack-protector-explicit" and visibleVarName = "flag_stack_protect, 4" and storageFieldName = "x_flag_stack_protect, 4"
  or
  optionName = "-fstack-protector-strong" and visibleVarName = "flag_stack_protect, 3" and storageFieldName = "x_flag_stack_protect, 3"
  or
  optionName = "-fstack-reuse=" and visibleVarName = "flag_stack_reuse" and storageFieldName = "x_flag_stack_reuse"
  or
  optionName = "-fstdarg-opt" and visibleVarName = "flag_stdarg_opt" and storageFieldName = "x_flag_stdarg_opt"
  or
  optionName = "-fstore-merging" and visibleVarName = "flag_store_merging" and storageFieldName = "x_flag_store_merging"
  or
  optionName = "-fstrict-volatile-bitfields" and visibleVarName = "flag_strict_volatile_bitfields" and storageFieldName = "x_flag_strict_volatile_bitfields"
  or
  optionName = "-fthread-jumps" and visibleVarName = "flag_thread_jumps" and storageFieldName = "x_flag_thread_jumps"
  or
  optionName = "-ftracer" and visibleVarName = "flag_tracer" and storageFieldName = "x_flag_tracer"
  or
  optionName = "-ftrapv" and visibleVarName = "flag_trapv" and storageFieldName = "x_flag_trapv"
  or
  optionName = "-ftree-bit-ccp" and visibleVarName = "flag_tree_bit_ccp" and storageFieldName = "x_flag_tree_bit_ccp"
  or
  optionName = "-ftree-builtin-call-dce" and visibleVarName = "flag_tree_builtin_call_dce" and storageFieldName = "x_flag_tree_builtin_call_dce"
  or
  optionName = "-ftree-ccp" and visibleVarName = "flag_tree_ccp" and storageFieldName = "x_flag_tree_ccp"
  or
  optionName = "-ftree-ch" and visibleVarName = "flag_tree_ch" and storageFieldName = "x_flag_tree_ch"
  or
  optionName = "-ftree-coalesce-vars" and visibleVarName = "flag_tree_coalesce_vars" and storageFieldName = "x_flag_tree_coalesce_vars"
  or
  optionName = "-ftree-copy-prop" and visibleVarName = "flag_tree_copy_prop" and storageFieldName = "x_flag_tree_copy_prop"
  or
  optionName = "-ftree-cselim" and visibleVarName = "flag_tree_cselim" and storageFieldName = "x_flag_tree_cselim"
  or
  optionName = "-ftree-dce" and visibleVarName = "flag_tree_dce" and storageFieldName = "x_flag_tree_dce"
  or
  optionName = "-ftree-dominator-opts" and visibleVarName = "flag_tree_dom" and storageFieldName = "x_flag_tree_dom"
  or
  optionName = "-ftree-dse" and visibleVarName = "flag_tree_dse" and storageFieldName = "x_flag_tree_dse"
  or
  optionName = "-ftree-forwprop" and visibleVarName = "flag_tree_forwprop" and storageFieldName = "x_flag_tree_forwprop"
  or
  optionName = "-ftree-fre" and visibleVarName = "flag_tree_fre" and storageFieldName = "x_flag_tree_fre"
  or
  optionName = "-ftree-loop-distribute-patterns" and visibleVarName = "flag_tree_loop_distribute_patterns" and storageFieldName = "x_flag_tree_loop_distribute_patterns"
  or
  optionName = "-ftree-loop-distribution" and visibleVarName = "flag_tree_loop_distribution" and storageFieldName = "x_flag_tree_loop_distribution"
  or
  optionName = "-ftree-loop-if-convert" and visibleVarName = "flag_tree_loop_if_convert" and storageFieldName = "x_flag_tree_loop_if_convert"
  or
  optionName = "-ftree-loop-im" and visibleVarName = "flag_tree_loop_im" and storageFieldName = "x_flag_tree_loop_im"
  or
  optionName = "-ftree-loop-ivcanon" and visibleVarName = "flag_tree_loop_ivcanon" and storageFieldName = "x_flag_tree_loop_ivcanon"
  or
  optionName = "-ftree-loop-optimize" and visibleVarName = "flag_tree_loop_optimize" and storageFieldName = "x_flag_tree_loop_optimize"
  or
  optionName = "-ftree-loop-vectorize" and visibleVarName = "flag_tree_loop_vectorize" and storageFieldName = "x_flag_tree_loop_vectorize"
  or
  optionName = "-ftree-lrs" and visibleVarName = "flag_tree_live_range_split" and storageFieldName = "x_flag_tree_live_range_split"
  or
  optionName = "-ftree-parallelize-loops=" and visibleVarName = "flag_tree_parallelize_loops" and storageFieldName = "x_flag_tree_parallelize_loops"
  or
  optionName = "-ftree-partial-pre" and visibleVarName = "flag_tree_partial_pre" and storageFieldName = "x_flag_tree_partial_pre"
  or
  optionName = "-ftree-phiprop" and visibleVarName = "flag_tree_phiprop" and storageFieldName = "x_flag_tree_phiprop"
  or
  optionName = "-ftree-pre" and visibleVarName = "flag_tree_pre" and storageFieldName = "x_flag_tree_pre"
  or
  optionName = "-ftree-pta" and visibleVarName = "flag_tree_pta" and storageFieldName = "x_flag_tree_pta"
  or
  optionName = "-ftree-reassoc" and visibleVarName = "flag_tree_reassoc" and storageFieldName = "x_flag_tree_reassoc"
  or
  optionName = "-ftree-scev-cprop" and visibleVarName = "flag_tree_scev_cprop" and storageFieldName = "x_flag_tree_scev_cprop"
  or
  optionName = "-ftree-sink" and visibleVarName = "flag_tree_sink" and storageFieldName = "x_flag_tree_sink"
  or
  optionName = "-ftree-slp-vectorize" and visibleVarName = "flag_tree_slp_vectorize" and storageFieldName = "x_flag_tree_slp_vectorize"
  or
  optionName = "-ftree-slsr" and visibleVarName = "flag_tree_slsr" and storageFieldName = "x_flag_tree_slsr"
  or
  optionName = "-ftree-sra" and visibleVarName = "flag_tree_sra" and storageFieldName = "x_flag_tree_sra"
  or
  optionName = "-ftree-switch-conversion" and visibleVarName = "flag_tree_switch_conversion" and storageFieldName = "x_flag_tree_switch_conversion"
  or
  optionName = "-ftree-tail-merge" and visibleVarName = "flag_tree_tail_merge" and storageFieldName = "x_flag_tree_tail_merge"
  or
  optionName = "-ftree-ter" and visibleVarName = "flag_tree_ter" and storageFieldName = "x_flag_tree_ter"
  or
  optionName = "-ftree-vrp" and visibleVarName = "flag_tree_vrp" and storageFieldName = "x_flag_tree_vrp"
  or
  optionName = "-funconstrained-commons" and visibleVarName = "flag_unconstrained_commons" and storageFieldName = "x_flag_unconstrained_commons"
  or
  optionName = "-funroll-all-loops" and visibleVarName = "flag_unroll_all_loops" and storageFieldName = "x_flag_unroll_all_loops"
  or
  optionName = "-funroll-loops" and visibleVarName = "flag_unroll_loops" and storageFieldName = "x_flag_unroll_loops"
  or
  optionName = "-funswitch-loops" and visibleVarName = "flag_unswitch_loops" and storageFieldName = "x_flag_unswitch_loops"
  or
  optionName = "-funwind-tables" and visibleVarName = "flag_unwind_tables" and storageFieldName = "x_flag_unwind_tables"
  or
  optionName = "-fvariable-expansion-in-unroller" and visibleVarName = "flag_variable_expansion_in_unroller" and storageFieldName = "x_flag_variable_expansion_in_unroller"
  or
  optionName = "-fvect-cost-model=" and visibleVarName = "flag_vect_cost_model" and storageFieldName = "x_flag_vect_cost_model"
  or
  optionName = "-fversion-loops-for-strides" and visibleVarName = "flag_version_loops_for_strides" and storageFieldName = "x_flag_version_loops_for_strides"
  or
  optionName = "-fvpt" and visibleVarName = "flag_value_profile_transformations" and storageFieldName = "x_flag_value_profile_transformations"
  or
  optionName = "-fweb" and visibleVarName = "flag_web" and storageFieldName = "x_flag_web"
  or
  optionName = "-fwrapv" and visibleVarName = "flag_wrapv" and storageFieldName = "x_flag_wrapv"
  or
  optionName = "-fwrapv-pointer" and visibleVarName = "flag_wrapv_pointer" and storageFieldName = "x_flag_wrapv_pointer"
}
