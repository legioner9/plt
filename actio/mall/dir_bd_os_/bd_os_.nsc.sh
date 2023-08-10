#!/bin/bash

#! debag
# . "${HOME}/.bashrc"
#!

filename="${PLT_PATH}/actio/mall/dir_bd_os_/bd_os_.sh"

echo -e "${HLIGHT}--- start file: $filename with args: $@ ---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git

bd_os_() {

local dir_fns_="${PLT_PATH}/actio/mall"
    #{def_const}

    #{ctrl_args}

local FNN=${FUNCNAME[0]}
# echo ". ${PLT_PATH}/.d/.nid/mall.nid"
if ! . "${PLT_PATH}/.d/.nid/mall.nid"; then
${_plt_exit} "fail: . ${PLT_PATH}/.d/.nid/mall.nid"
return 1
fi
if [[ -n "${ARGS1}" ]] && [[ "${cntl_args[@]}" =~ "${ARGS1}" ]]; then
return 0
fi
# echo ". ${FN_SAL_DIR}/bd_os_.body.nsc.sh"
if ! . "${FN_SAL_DIR}/bd_os_.body.nsc.sh"; then
${_plt_exit} "fail: . ${FN_SAL_DIR}/bd_os_.body.sh"
return 1
fi
cd "$PPWD" 1>/dev/null || plt_exit "fail : cd $PPWD"
    #{init_body}

}

# bd_os_ @

unset filename
