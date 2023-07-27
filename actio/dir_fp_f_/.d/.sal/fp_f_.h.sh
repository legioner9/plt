#!/bin/bash

echo -e "${CYAN} ${FNN}() help: 
MAIN: gnr fs for functin.sh
NAME: ${FNN}()
WHERE?:(only in root dir)Y/N
WHAT?:(only abs path | only name file | 
any stile path - if arg no rout full_path be pwd/$name , if name root name instead)
ARGS: 
\$1
[ ,\$2 num_menu ]
CNTLS:
    required
    optional -verbose (not garg parsed, for echo main param function) 
CNTL inspect : -h, _man, _tst, _extst_1 [,_extst_2 ...], _go, _deb, _mdeb, _list
    _exdeb<num> exec ${FNN}extst/extst_1/ex<num>_tst/_flow_tst.sh
    _extst<num> exec ${FNN}extst/extst_1/ex<num>_tst/exec._extst
CNTL defaut: -_echo, -_debug, --_ptr_if {ptr_from_if: if true fn be work, else be ignored}, --ptr_sem {ptr_with_semapore for arg wate_sem, free_sem usnig insidefunction} --errmes {if_error_case}, --outmes {free_message}, ...
CNTL develop: -_develop1, ... for special development mode, NOT to product
TAGS: (fs|net|)
IFS: (fifs| exl| ...) - discribe in ${PATH_IFS_DIR}
FLOW: (process | subprocess (no read pause only plt_err return \$errno ) | interpritator)
RETURN: ( result>stdout, return 0 | data | change to ptr |  fs_structure | ... )
ERROR: ( (plt_err | plt_pause | plt_exit) errmes return 1 | ... )
WARN: 
DEBUG:
${FNN} _deb, ${FNN} _mdeb
EXAMP:
${FNN} --_name_fn <name_fn> --_dir_fns <dir_fns> --_grad (1_prim|2_secu|3_mall|4_raqu|5_ague) --_tail (1_veri|2_prov|3_absc|...)
    <num_flow>
        1 max like plt fns
        2 mid for fonsh
ADDS: 
    . fp_f_extst/extst_1/_gnr_dir_tst.sh 3 -> add ex3
    . _gnr_dir_sys.sh ${FNN}_1 -> add ${FNN}_1_extst
RealExamp: fp_f_ --_name_fn <name> --_dir_fns \${PLT_PATH}/actio/mall --_grad mall --_tail prov
${NORMAL}"
