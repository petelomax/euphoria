﻿// CodeMirror, copyright (c) by Marijn Haverbeke and others
// Distributed under an MIT license: https://codemirror.net/5/LICENSE

(function(mod) {
  if (typeof exports == "object" && typeof module == "object") // CommonJS
    mod(require("../../lib/codemirror"));
  else if (typeof define == "function" && define.amd) // AMD
    define(["../../lib/codemirror"], mod);
  else // Plain browser env
    mod(CodeMirror);
})(function(CodeMirror) {
"use strict";

CodeMirror.defineMode("phix", function(config) {
  var indentUnit = config.indentUnit;

  var types = {
        'string':true, 'nullable_string':true, 'atom_string':true, 'atom':true,
        'bool':true, 'boolean':true, 'cdCanvan':true, 'cdCanvas':true,
        'complex':true, 'CURLcode':true, 'gdc':true, 'gdx':true, 'int':true,
        'integer':true, 'Ihandle':true, 'Ihandles':true, 'Ihandln':true,
        'mpfr':true, 'mpq':true, 'mpz':true, 'mpz_or_string':true,
        'number':true, 'rid_string':true, 'rtn':true, 'seq':true,
        'sequence':true, 'timedate':true, 'object':true
  };

  var keywords = {
        'abstract':true, 'class':true, 'continue':true, 'export':true,
        'extends':true, 'nullable':true, 'private':true, 'static':true,
        'struct':true, 'trace':true, "ifdef":true, "elsedef":true, 
        'and':true, 'break':true, 'by':true, 'case':true, 'catch':true,
        'const':true, 'constant':true, 'debug':true, 'default':true, 'do':true,
        'else':true, 'elsif':true, 'end':true, 'enum':true, 'exit':true,
        'fallthru':true, 'fallthrough':true, 'for':true, 'forward':true,
        'from':true, 'function':true, 'global':true, 'if':true, 'in':true,
        'include':true, 'js':true, 'javascript':true,
        'javascript_semantics':true, 'let':true, 'local':true, 'nested':true,
        'not':true, 'or':true, 'procedure':true, 'profile':true,
        'profile_time':true, 'public':true, 'return':true, 'safe_mode':true,
        'switch':true, 'then':true, 'to':true, 'try':true, 'type':true,
        'type_check':true, 'until':true, 'warning':true, 'while':true,
        'with':true, 'without':true, 'xor':true, "goto":true, 
  };

  var builtins = {
        'abort':true, 'abs':true, 'adjust_timedate':true, 'and_bits':true,
        'and_bitsu':true, 'apply':true, 'append':true, 'arccos':true,
        'arcsin':true, 'arctan':true, 'assert':true, 'atan2':true,
        'atom_to_float32':true, 'atom_to_float64':true, 'average':true,
        'bankers_rounding':true, 'beep':true, 'begins':true, 
        'binary_search':true, 'bits_to_int':true, 'bk_color':true,
        'bytes_to_int':true, 'call_func':true, 'call_proc':true,
        'ceil':true, 'change_timezone':true, 'choose':true, 
        'clear_screen':true, 'columnize':true, 'combinations':true,
        'combinations_with_repetitions':true, 'command_line':true,
        'compare':true, 'complex_abs':true, 'complex_add':true,
        'complex_arg':true, 'complex_conjugate':true, 'complex_cos':true,
        'complex_cosh':true, 'complex_div':true, 'complex_exp':true,
        'complex_imag':true, 'complex_inv':true, 'complex_log':true,
        'complex_mul':true, 'complex_neg':true, 'complex_new':true,
        'complex_norm':true, 'complex_power':true, 'complex_rho':true,
        'complex_real':true, 'complex_round':true, 'complex_sin':true,
        'complex_sinh':true, 'complex_sprint':true, 'complex_sqrt':true,
        'complex_sub':true, 'complex_theta':true, 'concat':true, 'cos':true,
        'count_bits':true, 'crash':true, 'custom_sort':true, 'date':true,
        'day_of_week':true, 'day_of_year':true, 'days_in_month':true,
        'decode_base64':true, 'decode_flags':true, 'deep_copy':true,
        'deld':true, 'deserialize':true, 'destroy_dict':true,
        'destroy_queue':true, 'destroy_stack':true, 'dict_name':true,
        'dict_size':true, 'elapsed':true, 'elapsed_short':true,
        'encode_base64':true, 'equal':true, 'even':true, 'exp':true,
        'extract':true, 'factorial':true, 'factors':true, 'factor_count':true,
        'factor_sum':true, 'file_size_k':true, 'find':true, 'find_all':true,
        'find_any':true, 'find_replace':true, 'filter':true,
        'filter_count':true, 'flatten':true, 'float32_to_atom':true,
        'float64_to_atom':true, 'floor':true, 'format_timedate':true,
        'free_console':true, 'from_polar':true, 'gButton':true, 'gCanvas':true,
        'gCanvasArc':true, 'gCanvasCircle':true, 'gCanvasCubicBezier':true,
        'gCanvasGetBackground':true, 'gCanvasGetForeground':true,
        'gCanvasGetLineStyle':true, 'gCanvasGetLineWidth':true,
        'gCanvasLine':true, 'gCanvasPixel':true, 'gCanvasPolygon':true,
        'gCanvasQuadBezier':true, 'gCanvasRect':true,
        'gCanvasSetBackground':true, 'gCanvasSetForeground':true,
        'gCanvasSetLineStyle':true, 'gCanvasSetLineWidth':true,
        'gCanvasText':true, 'gcd':true, 'gCheckbox':true, 'gClipboard':true,
        'gDatePick':true, 'gDialog':true, 'gDropDown':true,
        'get_file_base':true, 'get_file_extension':true, 'get_file_name':true,
        'get_file_name_and_path':true, 'get_file_path':true,
        'get_file_path_and_name':true, 'get_maxprime':true, 'get_prime':true,
        'get_primes':true, 'get_primes_le':true, 'get_proper_dir':true,
        'get_proper_path':true, 'get_rand':true, 'get_routine_info':true,
        'get_test_abort':true, 'get_test_logfile':true, 'get_test_pause':true,
        'get_test_verbosity':true, 'get_tzid':true, 'getd':true, 'getdd':true,
        'getd_all_keys':true, 'getd_by_index':true, 'getd_index':true,
        'getd_partial_key':true, 'gFrame':true, 'gGetAttribute':true,
        'gGetDialog':true, 'gGetDouble':true, 'gGetFocus':true, 'gGetInt':true,
        'gGetIntInt':true, 'gGetParent':true, 'gGraph':true, 'gHbox':true,
        'gImage_from_XPM':true, 'gImageDraw':true, 'gLabel':true,
        'glAttachShader':true, 'glBindBuffer':true, 'glBindTexture':true,
        'glBufferData':true, 'glCanvasSpecialText':true, 'glClear':true,
        'glClearColor':true, 'glColor':true, 'glCompileShader':true,
        'glCreateBuffer':true, 'glCreateProgram':true, 'glCreateShader':true,
        'glCreateTexture':true, 'glDeleteProgram':true, 'glDeleteShader':true,
        'glDrawArrays':true, 'glEnable':true, 'glEnableVertexAttribArray':true,
        'glFloat32Array':true, 'glInt32Array':true, 'gList':true,
        'glFlush':true, 'glGetAttribLocation':true, 'glGetError':true,
        'glGetProgramInfoLog':true, 'glGetProgramParameter':true,
        'glGetShaderInfoLog':true, 'glGetShaderParameter':true,
        'glGetUniformLocation':true, 'glLinkProgram':true,
        'glLoadIdentity':true, 'glMatrixMode':true, 'glOrtho':true,
        'glRotatef':true, 'glShadeModel':true, 'glShaderSource':true,
        'glSimpleA7texcoords':true, 'glTexImage2Dc':true,
        'glTexParameteri':true, 'glTranslate':true, 'glUniform1f':true,
        'glUniform1i':true, 'glUniformMatrix4fv':true, 'glUseProgram':true,
        'glVertex':true, 'glVertexAttribPointer':true, 'glViewport':true,
        'gMainLoop':true, 'gMainLoopf':true, 'gMenu':true,
        'gMenuGetAttribute':true, 'gMenuSetAttribute':true, 'gMsgBox':true,
        'gPopupMenu':true, 'gProgressBar':true, 'gQuit':true, 'gRadio':true,
        'gRadioItem':true, 'gRedraw':true, 'gSetAttribute':true,
        'gSetAttributes':true, 'gSetDouble':true, 'gSetFocus':true,
        'gSetHandler':true, 'gSetInt':true, 'gShow':true, 'gSlider':true,
        'gSpin':true, 'gSplit':true, 'gTable':true, 'gTabs':true, 'gText':true,
        'gTimer':true, 'gTreeAddNodes':true, 'gTreeDeleteChildren':true,
        'gTreeGetUserId':true, 'gTreeView':true, 'gUseGTK':true, 'gVbox':true,
        'gVersion':true, 'hcf':true, 'head':true, 'hsv_to_rgb':true, 'iff':true,
        'iif':true, 'include_file':true, 'incl0de_file':true, 'insert':true,
        'instance':true, 'int_to_bits':true, 'int_to_bytes':true,
        'is_dict':true, 'is_inf':true, 'is_integer':true, 'is_leap_year':true,
        'is_nan':true, 'is_prime':true, 'islower':true, 'isupper':true,
        'join':true, 'join_by':true, 'join_path':true, 
        'k_perm':true, 'largest':true, 'lcm':true,
        'length':true, 'ln':true, 'log':true, 'log10':true, 'log2':true,
        'lower':true, 'm4_crossProduct':true, 'm4_inverse':true,
        'm4_lookAt':true, 'm4_multiply':true, 'm4_normalize':true,
        'm4_perspective':true, 'm4_subtractVectors':true, 'm4_xRotate':true,
        'm4_yRotate':true, 'machine_bits':true, 'machine_word':true,
        'match':true, 'match_all':true, 'match_replace':true, 'max':true,
        'maxsq':true, 'median':true, 'min':true, 'minsq':true, 'mod':true,
        'mpfr_abs':true, 'mpfr_add':true, 'mpfr_add_d':true, 'mpfr_add_si':true,
        'mpfr_ceil':true, 'mpfr_cmp':true, 'mpfr_cmp_si':true,
        'mpfr_const_pi':true, 'mpfr_div':true, 'mpfr_div_d':true,
        'mpfr_div_si':true, 'mpfr_div_z':true, 'mpfr_floor':true,
        'mpfr_fmod':true, 'mpfr_free':true, 'mpfr_get_d':true,
        'mpfr_get_default_precision':true,
        'mpfr_get_default_rounding_mode':true, 'mpfr_get_fixed':true,
        'mpfr_get_precision':true, 'mpfr_get_si':true, 'mpfr_init':true,
        'mpfr_inits':true, 'mpfr_init_set':true, 'mpfr_init_set_q':true,
        'mpfr_init_set_z':true, 'mpfr_mul':true, 'mpfr_mul_d':true,
        'mpfr_mul_si':true, 'mpfr_mul_z':true, 'mpfr_neg':true,
        'mpfr_pow_si':true, 'mpfr_set':true, 'mpfr_set_d':true,
        'mpfr_set_default_precision':true,
        'mpfr_set_default_rounding_mode':true, 'mpfr_set_precision':true,
        'mpfr_set_q':true, 'mpfr_set_si':true, 'mpfr_set_str':true,
        'mpfr_set_z':true, 'mpfr_si_div':true, 'mpfr_si_sub':true,
        'mpfr_sqrt':true, 'mpfr_sub':true, 'mpfr_sub_d':true,
        'mpfr_sub_si':true, 'mpfr_ui_pow_ui':true, 'mpfr_si_pow_si':true,
        'mpq_abs':true, 'mpq_add':true, 'mpq_add_si':true,
        'mpq_canonicalize':true, 'mpq_cmp':true, 'mpq_cmp_si':true,
        'mpq_div':true, 'mpq_div_2exp':true, 'mpq_free':true, 'mpq_get_d':true,
        'mpq_get_den':true, 'mpq_get_num':true, 'mpq_get_str':true,
        'mpq_init':true, 'mpq_init_set':true, 'mpq_init_set_si':true,
        'mpq_init_set_str':true, 'mpq_init_set_z':true, 'mpq_inits':true,
        'mpq_inv':true, 'mpq_mul':true, 'mpq_neg':true, 'mpq_set':true,
        'mpq_set_si':true, 'mpq_set_str':true, 'mpq_set_z':true, 'mpq_sub':true,
        'mpz_abs':true, 'mpz_add':true, 'mpz_addmul':true, 'mpz_addmul_ui':true,
        'mpz_addmul_si':true, 'mpz_add_si':true, 'mpz_add_ui':true,
        'mpz_and':true, 'mpz_bin_uiui':true, 'mpz_cdiv_q':true, 'mpz_cmp':true,
        'mpz_cmp_si':true, 'mpz_divexact':true, 'mpz_divexact_ui':true,
        'mpz_divisible_p':true, 'mpz_divisible_ui_p':true, 'mpz_even':true,
        'mpz_fac_ui':true, 'mpz_factorstring':true, 'mpz_fdiv_q':true,
        'mpz_fdiv_q_2exp':true, 'mpz_fdiv_q_ui':true, 'mpz_fdiv_qr':true,
        'mpz_fdiv_r':true, 'mpz_fdiv_ui':true, 'mpz_fib_ui':true,
        'mpz_fib2_ui':true, 'mpz_fits_atom':true, 'mpz_fits_integer':true,
        'mpz_free':true, 'mpz_gcd':true, 'mpz_gcd_ui':true, 'mpz_get_atom':true,
        'mpz_get_integer':true, 'mpz_get_short_str':true, 'mpz_get_str':true,
        'mpz_init':true, 'mpz_init_set':true, 'mpz_inits':true,
        'mpz_invert':true, 'mpz_lcm':true, 'mpz_lcm_ui':true, 'mpz_max':true,
        'mpz_min':true, 'mpz_mod':true, 'mpz_mod_ui':true, 'mpz_mul':true,
        'mpz_mul_2exp':true, 'mpz_mul_d':true, 'mpz_mul_si':true,
        'mpz_neg':true, 'mpz_nextprime':true, 'mpz_nthroot':true,
        'mpz_odd':true, 'mpz_pollard_rho':true, 'mpz_popcount':true,
        'mpz_pow_ui':true, 'mpz_powm':true, 'mpz_powm_ui':true,
        'mpz_prime':true, 'mpz_factors':true, 'mpz_prime_factors':true,
        'mpz_rand':true, 'mpz_rand_ui':true, 'mpz_re_compose':true,
        'mpz_remove':true, 'mpz_scan0':true, 'mpz_scan1':true, 'mpz_set':true,
        'mpz_set_d':true, 'mpz_set_q':true, 'mpz_set_si':true,
        'mpz_set_str':true, 'mpz_set_v':true, 'mpz_sign':true,
        'mpz_sizeinbase':true, 'mpz_sqrt':true, 'mpz_sub':true,
        'mpz_sub_si':true, 'mpz_sub_ui':true, 'mpz_si_sub':true,
        'mpz_tdiv_q_2exp':true, 'mpz_tdiv_r_2exp':true, 'mpz_tstbit':true,
        'mpz_ui_pow_ui':true, 'mpz_xor':true, 'mulmod':true, 'named_dict':true,
        'new_dict':true, 'new_queue':true, 'new_stack':true, 'not_bits':true,
        'not_bitsu':true, 'odd':true, 'or_all':true, 'or_allu':true,
        'or_bits':true, 'or_bitsu':true, 'ord':true, 'ordinal':true,
        'ordinant':true, 'override_timezone':true, 'pad':true, 'pad_head':true,
        'pad_tail':true, 'parse_date_string':true, 'papply':true, 'peep':true,
        'peepn':true, 'peep_dict':true, 'permute':true, 'permutes':true,
        'phi':true, 'platform':true, 'pop':true, 'popn':true, 'pop_dict':true,
        'power':true, 'powmod':true, 'pp':true, 'ppEx':true, 'ppExf':true,
        'ppf':true, 'ppOpt':true, 'pq_add':true, 'pq_destroy':true,
        'pq_empty':true, 'pq_new':true, 'pq_peek':true, 'pq_pop':true,
        'pq_pop_data':true, 'pq_size':true, 'prepend':true,
        'prime_factors':true, 'prime_powers':true, 'printf':true,
        'product':true, 'progress':true, 'proper':true, 'push':true,
        'pushn':true, 'putd':true, 'puts':true, 'queue_empty':true,
        'queue_size':true, 'rand':true, 'rand_range':true, 'reinstate':true,
        'remainder':true, 'remove':true, 'remove_all':true, 'repeat':true,
        'repeatch':true, 'replace':true, 'requires':true, 'reverse':true,
        'rfind':true, 'rgb':true, 'rmatch':true, 'rmdr':true, 'rnd':true,
        'round':true, 'routine_id':true, 'scanf':true, 'serialize':true,
        'series':true, 'set_rand':true, 'set_test_abort':true,
        'set_test_logfile':true, 'set_test_module':true, 'set_test_pause':true,
        'set_test_verbosity':true, 'set_timedate_formats':true,
        'set_timezone':true, 'setd':true, 'setd_default':true, 'shorten':true,
        'sha256':true, 'shift_bits':true, 'shuffle':true, 'sign':true,
        'sin':true, 'smallest':true, 'sort':true, 'sort_columns':true,
        'speak':true, 'splice':true, 'split':true, 'split_any':true,
        'split_by':true, 'sprint':true, 'sprintf':true, 'sq_abs':true,
        'sq_add':true, 'sq_and':true, 'sq_and_bits':true, 'sq_arccos':true,
        'sq_arcsin':true, 'sq_arctan':true, 'sq_atom':true, 'sq_ceil':true,
        'sq_cmp':true, 'sq_cos':true, 'sq_div':true, 'sq_even':true,
        'sq_eq':true, 'sq_floor':true, 'sq_floor_div':true, 'sq_ge':true,
        'sq_gt':true, 'sq_int':true, 'sq_le':true, 'sq_log':true,
        'sq_log10':true, 'sq_log2':true, 'sq_lt':true, 'sq_max':true,
        'sq_min':true, 'sq_mod':true, 'sq_mul':true, 'sq_ne':true,
        'sq_not':true, 'sq_not_bits':true, 'sq_odd':true, 'sq_or':true,
        'sq_or_bits':true, 'sq_power':true, 'sq_rand':true, 'sq_remainder':true,
        'sq_rmdr':true, 'sq_rnd':true, 'sq_round':true, 'sq_seq':true,
        'sq_sign':true, 'sq_sin':true, 'sq_sqrt':true, 'sq_str':true,
        'sq_sub':true, 'sq_tan':true, 'sq_trunc':true, 'sq_uminus':true,
        'sq_xor':true, 'sq_xor_bits':true, 'sqrt':true, 'square_free':true,
        'stack_empty':true, 'stack_size':true, 'substitute':true,
        'substitute_all':true, 'sum':true, 'tail':true, 'tan':true,
        'test_equal':true, 'test_fail':true, 'test_false':true,
        'test_not_equal':true, 'test_pass':true, 'test_summary':true,
        'test_true':true, 'text_color':true, 'throw':true, 'time':true,
        'timedate_diff':true, 'timedelta':true, 'to_integer':true,
        'to_number':true, 'to_rgb':true, 'to_string':true, 'traverse_dict':true,
        'traverse_dict_partial_key':true, 'trim':true, 'trim_head':true,
        'trim_tail':true, 'trunc':true, 'tagset':true, 'tagstart':true,
        'typeof':true, 'unique':true, 'unix_dict':true, 'upper':true,
        'utf8_to_utf32':true, 'utf32_to_utf8':true, 'valid_index':true,
        'version':true, 'video_config':true, 'vlookup':true, 'vslice':true,
        'wglGetProcAddress':true, 'wildcard_file':true, 'wildcard_match':true,
        'with_rho':true, 'with_theta':true, 'xml_new_doc':true,
        'xml_new_element':true, 'xml_set_attribute':true, 'xml_sprint':true,
        'xor_bits':true, 'xor_bitsu':true,
        'accept':true, 'allocate':true, 'allocate_string':true,
        'allow_break':true, 'ARM':true, 'atom_to_float80':true, 'c_func':true,
        'c_proc':true, 'call_back':true, 'chdir':true, 'check_break':true,
        'clearDib':true, 'close':true, 'closesocket':true, 'console':true,
        'copy_file':true, 'create':true, 'create_directory':true,
        'create_thread':true, 'curl_easy_cleanup':true,
        'curl_easy_get_file':true, 'curl_easy_init':true,
        'curl_easy_perform':true, 'curl_easy_perform_ex':true,
        'curl_easy_setopt':true, 'curl_easy_strerror':true,
        'curl_global_cleanup':true, 'curl_global_init':true,
        'curl_slist_append':true, 'curl_slist_free_all':true,
        'current_dir':true, 'cursor':true, 'define_c_func':true,
        'define_c_proc':true, 'delete':true, 'delete_cs':true,
        'delete_file':true, 'dir':true, 'DLL':true, 'drawDib':true,
        'drawShadedPolygonToDib':true, 'ELF32':true, 'ELF64':true,
        'enter_cs':true, 'eval':true, 'exit_thread':true, 'free':true,
        'file_exists':true, 'final':true, 'float80_to_atom':true, 'format':true,
        'get_bytes':true, 'get_file_date':true, 'get_file_size':true,
        'get_file_type':true, 'get_interpreter':true, 'get_key':true,
        'get_socket_error':true, 'get_text':true, 'get_thread_exitcode':true,
        'get_thread_id':true, 'getc':true, 'getenv':true, 'gets':true,
        'getsockaddr':true, 'glBegin':true, 'glCallList':true, 'glFrustum':true,
        'glGenLists':true, 'glGetString':true, 'glLight':true,
        'glMaterial':true, 'glNewList':true, 'glNormal':true,
        'glPopMatrix':true, 'glPushMatrix':true, 'glRotate':true, 'glEnd':true,
        'glEndList':true, 'glTexImage2D':true, 'goto':true, 'GUI':true,
        'icons':true, 'ilASM':true, 'include_files':true, 'include_paths':true,
        'init_cs':true, 'ip_to_string':true, 'killDib':true,
        'leave_cs':true, 'listen':true, 'manifest':true, 'mem_copy':true,
        'mem_set':true, 'mpfr_const_euler':true, 'mpfr_gamma':true,
        'mpfr_gamma_inc':true, 'mpfr_log':true, 'mpfr_zeta':true,
        'mpfr_zeta_ui':true, 'mpfr_printf':true, 'mpfr_sprintf':true,
        'mpz_export':true, 'mpz_import':true, 'mpz_prime_mr':true,
        'namespace':true, 'new':true, 'newDib':true, 'open':true,
        'open_dll':true, 'PE32':true, 'PE64':true, 'peek':true,
        'peek_string':true, 'peek1s':true, 'peek1u':true, 'peek2s':true,
        'peek2u':true, 'peek4s':true, 'peek4u':true, 'peek8s':true,
        'peek8u':true, 'peekNS':true, 'peekns':true, 'peeknu':true, 'poke':true,
        'poke2':true, 'poke4':true, 'poke8':true, 'pokeN':true,
        'poke_string':true, 'poke_wstring':true, 'position':true,
        'prompt_number':true, 'prompt_string':true, 'read_file':true,
        'read_lines':true, 'recv':true, 'resume_thread':true, 'seek':true,
        'select':true, 'send':true, 'setHandler':true, 'shutdown':true,
        'sleep':true, 'SO':true, 'sockaddr_in':true, 'socket':true,
        'split_path':true, 'suspend_thread':true, 'system':true,
        'system_exec':true, 'system_open':true, 'system_wait':true,
        'task_clock_start':true, 'task_clock_stop':true, 'task_create':true,
        'task_delay':true, 'task_list':true, 'task_schedule':true,
        'task_self':true, 'task_status':true, 'task_suspend':true,
        'task_yield':true, 'thread_safe_string':true, 'try_cs':true,
        'utf8_to_utf16':true, 'utf16_to_utf8':true, 'utf16_to_utf32':true,
        'utf32_to_utf16':true, 'WSACleanup':true, 'wait_thread':true,
        'walk_dir':true, 'where':true, 'write_lines':true, 'wait_key':true
  };

  var constants = {
        'ANY_QUEUE':true, 'ASCENDING':true, 'BLACK':true, 'BLOCK_CURSOR':true,
        'BLUE':true, 'BRIGHT_CYAN':true, 'BRIGHT_BLUE':true,
        'BRIGHT_GREEN':true, 'BRIGHT_MAGENTA':true, 'BRIGHT_RED':true,
        'BRIGHT_WHITE':true, 'BROWN':true, 'C_DWORD':true, 'C_INT':true,
        'C_POINTER':true, 'C_USHORT':true, 'C_WORD':true, 'CURLE_OK':true, 
        'CURLOPT_MAIL_FROM':true, 'CURLOPT_MAIL_RCPT':true, 'CURLOPT_PASSWORD':true,
        'CURLOPT_READDATA':true, 'CURLOPT_READFUNCTION':true,
        'CURLOPT_SSL_VERIFYPEER':true, 'CURLOPT_SSL_VERIFYHOST':true,
        'CURLOPT_UPLOAD':true, 'CURLOPT_URL':true, 'CURLOPT_USE_SSL':true,
        'CURLOPT_USERNAME':true, 'CURLOPT_VERBOSE':true,
        'CURLOPT_WRITEFUNCTION':true, 'CURLUSESSL_ALL':true, 'CYAN':true,
        'D_NAME':true, 'D_ATTRIBUTES':true, 'D_SIZE':true, 'D_YEAR':true,
        'D_MONTH':true, 'D_DAY':true, 'D_HOUR':true, 'D_MINUTE':true,
        'D_SECOND':true, 'D_CREATION':true, 'D_LASTACCESS':true,
        'D_MODIFICATION':true, 'DT_YEAR':true, 'DT_MONTH':true, 'DT_DAY':true,
        'DT_HOUR':true, 'DT_MINUTE':true, 'DT_SECOND':true, 'DT_DOW':true,
        'DT_MSEC':true, 'DT_DOY':true, 'DT_GMT':true, 'EULER':true,
        'E_CODE':true, 'E_ADDR':true, 'E_LINE':true, 'E_RTN':true,
        'E_NAME':true, 'E_FILE':true, 'E_PATH':true, 'E_USER':true,
        'false':true, 'False':true, 'FALSE':true, 'FIFO_QUEUE':true,
        'FILETYPE_DIRECTORY':true, 'FILETYPE_FILE':true, 'GET_EOF':true,
        'GET_FAIL':true, 'GET_IGNORE':true, 'GET_SUCCESS':true,
        'GL_AMBIENT_AND_DIFFUSE':true, 'GL_ARRAY_BUFFER':true, 'GL_CLAMP':true,
        'GL_CLAMP_TO_BORDER':true, 'GL_CLAMP_TO_EDGE':true,
        'GL_COLOR_BUFFER_BIT':true, 'GL_COMPILE':true, 'GL_COMPILE_STATUS':true,
        'GL_CULL_FACE':true, 'GL_DEPTH_BUFFER_BIT':true, 'GL_DEPTH_TEST':true,
        'GL_EXTENSIONS':true, 'GL_FLAT':true, 'GL_FLOAT':true,
        'GL_FRAGMENT_SHADER':true, 'GL_FRONT':true, 'GL_LIGHT0':true,
        'GL_LIGHTING':true, 'GL_LINEAR':true, 'GL_LINK_STATUS':true,
        'GL_MODELVIEW':true, 'GL_NEAREST':true, 'GL_NO_ERROR':true,
        'GL_NORMALIZE':true, 'GL_POSITION':true, 'GL_PROJECTION':true,
        'GL_QUAD_STRIP':true, 'GL_QUADS':true, 'GL_RENDERER':true,
        'GL_REPEAT':true, 'GL_RGB':true, 'GL_RGBA':true, 'GL_SMOOTH':true,
        'GL_STATIC_DRAW':true, 'GL_TEXTURE_2D':true,
        'GL_TEXTURE_MAG_FILTER':true, 'GL_TEXTURE_MIN_FILTER':true,
        'GL_TEXTURE_WRAP_S':true, 'GL_TEXTURE_WRAP_T':true, 'GL_TRIANGLES':true,
        'GL_UNSIGNED_BYTE':true, 'GL_VENDOR':true, 'GL_VERSION':true,
        'GL_VERTEX_SHADER':true, 'GRAY':true, 'GREEN':true, 'K_BS':true,
        'GT_LF_STRIPPED':true, 'GT_WHOLE_FILE':true, 'INVLN10':true, 
        'K_cA':true, 'K_cC':true, 'K_cD':true, 'K_cF5':true, 'K_cK':true,
        'K_cM':true, 'K_cN':true, 'K_cO':true, 'K_cP':true, 'K_cR':true,
        'K_cS':true, 'K_cT':true, 'K_cW':true, 'K_CR':true, 'K_DEL':true,
        'K_DOWN':true, 'K_END':true, 'K_ESC':true, 'K_F1':true, 'K_F2':true,
        'K_F3':true, 'K_F4':true, 'K_F5':true, 'K_F6':true, 'K_F7':true,
        'K_F8':true, 'K_F9':true, 'K_F10':true, 'K_F11':true, 'K_F12':true,
        'K_HOME':true, 'K_INS':true, 'K_LEFT':true, 'K_MIDDLE':true,
        'K_PGDN':true, 'K_PGUP':true, 'K_RIGHT':true, 'K_SP':true, 'K_TAB':true,
        'K_UP':true, 'K_h':true, 'K_i':true, 'K_j':true, 'K_p':true, 'K_r':true,
        'K_s':true, 'JS':true, 'LIFO_QUEUE':true, 'LINUX':true, 'MAX_HEAP':true,
        'MAGENTA':true, 'MIN_HEAP':true, 'Nan':true, 'NO_CURSOR':true,
        'null':true, 'NULL':true, 'PI':true, 'pp_Ascii':true, 'pp_Brkt':true,
        'pp_Date':true, 'pp_File':true, 'pp_FltFmt':true, 'pp_Indent':true,
        'pp_IntCh':true, 'pp_IntFmt':true, 'pp_Maxlen':true, 'pp_Nest':true,
        'pp_Pause':true, 'pp_Q22':true, 'pp_StrFmt':true, 'RED':true,
        'SEEK_OK':true, 'SLASH':true, 'TEST_ABORT':true, 'TEST_CRASH':true,
        'TEST_PAUSE':true, 'TEST_PAUSE_FAIL':true, 'TEST_QUIET':true,
        'TEST_SHOW_ALL':true, 'TEST_SHOW_FAILED':true, 'TEST_SUMMARY':true,
        'true':true, 'True':true, 'TRUE':true, 'VC_COLOR':true, 'VC_MODE':true,
        'VC_LINES':true, 'VC_COLUMNS':true, 'VC_XPIXELS':true,
        'VC_YPIXELS':true, 'VC_NCOLORS':true, 'VC_PAGES':true,
        'VC_SCRNLINES':true, 'VC_SCRNCOLS':true, 'VK_DOWN':true, 'VK_F1':true,
        'VK_LEFT':true, 'VK_RIGHT':true, 'VK_UP':true, 'WHITE':true,
        'WINDOWS':true, 'XPG_AMBER':true, 'XPG_BLACK':true, 'XPG_BLUE':true,
        'XPG_BOLD':true, 'XPG_BOLDITALIC':true, 'XPG_C':true, 'XPG_CENTER':true,
        'XPG_CENTERPARENT':true, 'XPG_CENTRE':true, 'XPG_CHORD':true,
        'XPG_CLOSE':true, 'XPG_CONTINUE':true, 'XPG_CONTINUOUS':true,
        'XPG_CYAN':true, 'XPG_DARK_GRAY':true, 'XPG_DARK_GREEN':true,
        'XPG_DARK_GREY':true, 'XPG_DARK_PURPLE':true, 'XPG_DARK_RED':true,
        'XPG_DARK_YELLOW':true, 'XPG_DASHED':true, 'XPG_DASH_DOT':true,
        'XPG_DASH_DOT_DOT':true, 'XPG_DEFAULT':true, 'XPG_DEG2RAD':true,
        'XPG_DOTTED':true, 'XPG_E':true, 'XPG_EAST':true, 'XPG_FILLED':true,
        'XPG_GRAY':true, 'XPG_GREEN':true, 'XPG_GREY':true, 'XPG_GTK':true,
        'XPG_IGNORE':true, 'XPG_INDIGO':true, 'XPG_ITALIC':true, 'XPG_JS':true,
        'XPG_LIGHT_BLUE':true, 'XPG_LIGHT_GRAY':true, 'XPG_LIGHT_GREEN':true,
        'XPG_LIGHT_GREY':true, 'XPG_LIGHT_PARCHMENT':true, 'XPG_MAGENTA':true,
        'XPG_NAVY':true, 'XPG_N':true, 'XPG_NE':true, 'XPG_NORMAL':true,
        'XPG_NORTH':true, 'XPG_NORTHEAST':true, 'XPG_NORTHWEST':true,
        'XPG_NW':true, 'XPG_OLIVE':true, 'XPG_ORANGE':true,
        'XPG_PARCHMENT':true, 'XPG_PURPLE':true, 'XPG_RAD2DEG':true,
        'XPG_RED':true, 'XPG_S':true, 'XPG_SE':true, 'XPG_SECTOR':true,
        'XPG_SILVER':true, 'XPG_SLATE':true, 'XPG_SOUTH':true,
        'XPG_SOUTHEAST':true, 'XPG_SOUTHWEST':true, 'XPG_SW':true,
        'XPG_TEAL':true, 'XPG_VIOLET':true, 'XPG_W':true, 'XPG_WEST':true,
        'XPG_WHITE':true, 'XPG_WINAPI':true, 'XPG_YELLOW':true, 'YELLOW':true
  };

  var isOperatorChar = /[+\-*&^%:=<>!?|\/]/;

  var operators = {
    "+":true, "+=":true, "-":true, "-=":true, "*":true, "*=":true, "/":true, "/=":true,
    "<":true, "<=":true, ">":true, ">=":true, "=":true, "==":true, "!=":true, ":=":true,
    "||":true, "||=":true, "&":true, "&&":true, "&&=":true, "<<":true, "<<=":true,
    ">>":true, ">>=":true, "?":true, ":":true }

  var curPunc;

  function tokenBase(stream, state) {
    var ch = stream.next();
    // strings:
    if (ch == '"') {
      if (stream.eat('"')) {
        if (stream.eat('"')) {
            state.tokenize = tripleQuote;
            return tripleQuote(stream, state);
        } else {
          // a completed "" (empty string):
          return "string";
        }
      }
      state.tokenize = tokenString(ch);
      return state.tokenize(stream, state);
    }
    if (ch == "'" || ch == "`") {
      state.tokenize = tokenString(ch);
      return state.tokenize(stream, state);
    }
    // numbers:
    if (/[\d\.]/.test(ch)) {
      if (ch == ".") {
        stream.match(/^[0-9_]+([eE][\-+]?[0-9_]+)?/);
      } else if (ch == "0") {
        stream.match(/^[xX][0-9a-fA-F_]+/) ||
        stream.match(/^[bB][0-1_]+/) ||
        stream.match(/^[oOtT][0-7_]+/) ||
        stream.match(/^[dD][0-9_]+/) || 
        stream.match(/^\([0-9]+\)[0-9a-zA-Z_]+/) || 
        stream.match(/^[0-9_]+/);
      } else {
        stream.match(/^[0-9_]*\.?[0-9_]*([eE][\-+]?[0-9_]+)?/);
      }
      return "number";
    }
    // (as Go but less ':')
    if (/[\[\]{}\(\),;\.]/.test(ch)) {
      curPunc = ch;
      return null;
    }
    // comments (all six types):
    if (ch == "/") {
      if (stream.eat("*")) {
        state.tokenize = tokenCommentD(1);
        return state.tokenize(stream, state);
      }
      if (stream.eat("/")) {
        stream.skipToEnd();
        return "comment";
      }
    }
    if (ch == "#") {
      if (stream.eat("[")) {
        state.tokenize = tokenCommentH(1);
        return state.tokenize(stream, state);
      } else if (stream.eat("!")) {
        stream.skipToEnd();
        return "comment";
      } else {
        stream.match(/^[0-9a-fA-F_]+/);
        return "number";
      }
    }
    if (ch == "-") {
      if (stream.eat("-")) {
        if (stream.eat("/")) {
          if (stream.eat("*")) {
            state.tokenize = tokenCommentD(1);
            return state.tokenize(stream, state);
          }
        }
        stream.skipToEnd();
        return "comment";
      }
    }
    // operators
    if (isOperatorChar.test(ch)) {
      stream.eatWhile(isOperatorChar);
      let op = stream.current();
      if (!operators.propertyIsEnumerable(op)) {
          return "operator error";
      } 
      return "operator";
    }
    // identifiers
    stream.eatWhile(/[\w\$_\xa1-\uffff]/);
    var cur = stream.current();
    if (keywords.propertyIsEnumerable(cur)) return "keyword";
    if (constants.propertyIsEnumerable(cur)) return "atom";
    if (builtins.propertyIsEnumerable(cur)) return "builtin";
    if (types.propertyIsEnumerable(cur)) return "def";
    return "variable";
  }

  function tokenString(quote) {
    return function(stream, state) {
      var escaped = false, next, end = false;
      while ((next = stream.next()) != null) {
        if (next == quote && !escaped) {end = true; break;}
        escaped = !escaped && quote != "`" && next == "\\";
      }
      if (end || !(escaped || quote == "`"))
        state.tokenize = tokenBase;
      return "string";
    };
  }

  function tripleQuote(stream, state) {
    var firstQuote = false, secondQuote = false, ch;
    while (ch = stream.next()) {
      if (ch == '"' && secondQuote) {
        state.tokenize = tokenBase;
        break;
      }
      secondQuote = firstQuote && (ch == '"');
      firstQuote = (ch == '"');
    }
    return "string";
  }

  function tokenCommentD(depth) {
    // handle /* */ and --/* --*/ style (nested) comments
    return function(stream, state) {
      var maybeEnd = false, maybeNest = false, ch;
      while (ch = stream.next()) {
        if (ch == "/" && maybeEnd) {
          if (depth > 1) {
            state.tokenize = tokenCommentD(depth-1);
            break;
          } else {
            state.tokenize = tokenBase;
            break;
          }
        } else if (ch == "*" && maybeNest) {
          state.tokenize = tokenCommentD(depth+1);
          break;
        }
        maybeEnd = (ch == "*");
        maybeNest = (ch == "/");
      }
      return "comment";
    }
  }

  function tokenCommentH(depth) {
    // handle #[ #] style (nested) comments
    return function(stream, state) {
      var wasHash = false, ch;
      while (ch = stream.next()) {
        if (wasHash) {
          if (ch == "]") {
            if (depth > 1) {
              state.tokenize = tokenCommentH(depth-1);
              break;
            } else {
              state.tokenize = tokenBase;
              break;
            }
          } else if (ch == "[") {
            state.tokenize = tokenCommentH(depth+1);
            break;
          }
        }
        wasHash = (ch == "#");
      }
      return "comment";
    }
  }

  function Context(indented, column, type, align, prev) {
    this.indented = indented;
    this.column = column;
    this.type = type;
    this.align = align;
    this.prev = prev;
  }
  function pushContext(state, col, type) {
    return state.context = new Context(state.indented, col, type, null, state.context);
  }
  function popContext(state) {
    if (!state.context.prev) return;
    var t = state.context.type;
    if (t == ")" || t == "]" || t == "}")
      state.indented = state.context.indented;
    return state.context = state.context.prev;
  }

  // Interface

  return {
    startState: function(basecolumn) {
      return {
        tokenize: null,
        context: new Context((basecolumn || 0) - indentUnit, 0, "top", false),
        indented: 0,
        startOfLine: true
      };
    },

    token: function(stream, state) {
      var ctx = state.context;
      if (stream.sol()) {
        if (ctx.align == null) ctx.align = false;
        state.indented = stream.indentation();
        state.startOfLine = true;
        if (ctx.type == "case") ctx.type = "}";
      }
      if (stream.eatSpace()) return null;
      curPunc = null;
      var style = (state.tokenize || tokenBase)(stream, state);
      if (style == "comment") return style;
      if (ctx.align == null) ctx.align = true;

      if (curPunc == "{") pushContext(state, stream.column(), "}");
      else if (curPunc == "[") pushContext(state, stream.column(), "]");
      else if (curPunc == "(") pushContext(state, stream.column(), ")");
      else if (curPunc == "}" && ctx.type == "}") popContext(state);
      else if (curPunc == ctx.type) popContext(state);
      state.startOfLine = false;
      return style;
    },

    indent: function(state, textAfter) {
      if (state.tokenize != tokenBase && state.tokenize != null) return CodeMirror.Pass;
      var ctx = state.context, firstChar = textAfter && textAfter.charAt(0);
      if (ctx.type == "case" && /^(?:case|default)\b/.test(textAfter)) {
        state.context.type = "}";
        return ctx.indented;
      }
      var closing = firstChar == ctx.type;
      if (ctx.align) return ctx.column + (closing ? 0 : 1);
      else return ctx.indented + (closing ? 0 : indentUnit);
    },

    electricChars: "{}):",
    closeBrackets: "()[]{}''\"\"``",
    fold: "brace",
    // Phix has six(!!) different types of comments, carefully dealt
    //  with by hand above, these sort of things simply won't work:
//  blockCommentStart: "/*",
//  blockCommentEnd: "*/",
//  lineComment: "//"
  };
});

CodeMirror.defineMIME("text/x-phix", "phix");

});
