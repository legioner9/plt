#!/bin/bash

#! debag
# . "${HOME}/.bashrc"
#!

filename="${PLT_PATH}/actio/dir_fp_f_/fp_f_mall_prov_ln_2_extst/extst_1/ex1/_deb/res/dir_ln1_/ln1_.sh"

echo -e "${HLIGHT}--- start file: $filename with args: $@ ---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git

ln1_() {

    local FNN="ln1_"
    echo ". ${PLT_PATH}/.d/.nid/mall.nid"
    if ! . "${PLT_PATH}/.d/.nid/mall.nid"; then
        ${_plt_exit} "fail: . ${PLT_PATH}/.d/.nid/mall.nid"
        return 1
    fi
   
    echo ". ${FN_SAL_DIR}/${FNN}.body.nsc.sh"
    if ! . "${FN_SAL_DIR}/${FNN}.body.nsc.sh"; then
        ${_plt_exit} "fail: . ${FN_SAL_DIR}/${FNN}.body.sh"
        return 1
    fi

    ${_wrp2_} cd --_xxd "$PPWD" 1>/dev/null
    
    #{init_body}

}

# ln1_ @

unset filename
