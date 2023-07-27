#!/bin/bash

#! debag
# . "${HOME}/.bashrc"
#!

filename="${PLT_PATH}/actio/dir_fp_f_/prim_extst/extst_1/ex1/_deb/res/dir_ln2_/ln2_.sh"

echo -e "${HLIGHT}--- start file: $filename with args: $@ ---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git

ln2_() {

dir_fns_="${PLT_PATH}/actio/dir_fp_f_/prim_extst/extst_1/ex1/_deb/res"
    #{def_const}

    #{ctrl_args}

local FNN=${FUNCNAME[0]}
# echo ". ${PLT_PATH}/.d/.nid/mall.nid"
if ! . "${PLT_PATH}/.d/.nid/prim.nid"; then
echo -e "${RED}--- fail: . ${PLT_PATH}/.d/.nid/prim.nid ---${NORMAL}"
return 1
fi
if [[ -n "${ARGS1}" ]] && [[ "${cntl_args[@]}" =~ "${ARGS1}" ]]; then
return 0
fi
# echo ". ${FN_SAL_DIR}/${FNN}.body.nsc.sh"
if ! . "${FN_SAL_DIR}/${FNN}.body.nsc.sh"; then
echo -e "${RED}--- fail: . ${FN_SAL_DIR}/${FNN}.body.sh ---${NORMAL}"
return 1
fi
cd "$PPWD" 1>/dev/null || echo -e "${RED}--- fail : cd $PPWD ---${NORMAL}"
    #{init_body}

}

# ln2_ @

unset filename
