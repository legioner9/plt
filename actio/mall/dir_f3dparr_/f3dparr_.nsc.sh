#!/bin/bash

#! debag
# . "${HOME}/.bashrc"
#!

filename="${PLT_PATH}/actio/mall/dir_f3dparr_/f3dparr_.nsc.sh"

echo -e "${HLIGHT}--- start file: $filename with args: $@ ---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git

f3dparr_() {

    local ratis=0

local dir_fns_="${PLT_PATH}/actio/mall"
    #{def_const}

    #{ctrl_args}

local ARGS=($@)
local FNN=f3dparr_
local local_var_wrap
local local_var_wrap_arr=()
local local_var_fn
local local_var_fn_arr=()
echo -e "${GREEN}\${ARGS[@]} = ${ARGS[*]}${NORMAL}" #print variable
if [ -n "${ARGS[0]}" ] && { [ "${ARGS[0]}" == '-h' ] || { [ "${ARGS[0]:0:1}" != "-" ] && [ -n "$(grep -w "${ARGS[0]}" "${PLT_PATH}/.d/.nid/mall/mall.cntl")" ]; }; }; then
for local_var_wrap in $(f2e "${PLT_PATH}/.d/.nid/mall/mall.local"); do
# echo -e "${GREEN}$local_var_wrap = $local_var_wrap${NORMAL}" #print variable
eval local "$local_var_wrap"
local_var_wrap_arr+=("${local_var_wrap}")
done
if ! . "${PLT_PATH}/.d/.nid/mall/mall.const"; then
${_plt_exit} "fail: . ${PLT_PATH}/.d/.nid/mall/mall.const"
return 1
fi
if ! . "${PLT_PATH}/.d/.nid/mall/mall.nid"; then
${_plt_exit} "fail: . ${PLT_PATH}/.d/.nid/mall/mall.nid"
return 1
fi
echo -e "${HLIGHT}--- . ${PLT_PATH}/.d/.nid/mall/mall.nid, return 0 ---${NORMAL}" #start files
return 0
fi
# if ! ${_garg2e2_} "${ARGS[@]}" 1>/dev/null; then
if ! ${_garg2e2_} "${ARGS[@]}"; then
${_plt_exit} " f3dparr_ return 1: ${FNLOCK}"
return 1
fi
#? g_args with cntl=value
local g_args=($(${_garg2e2_} "${ARGS[@]}"))
#? e_args is {ARGS[@]} without cntl and cmtl_value - as it's free
local e_args=($(${_earg2e2_} "${ARGS[@]}"))
[[ 1 -eq ${verbose} ]] || echo -e "${GREEN}${g_args[@]}: ${g_args[*]}${NORMAL}" #print variable
local strex
for strex in $(${_garg2e2_} "${ARGS[@]}"); do
[[ 1 -eq ${verbose} ]] || echo "local $strex"
eval local $strex
done
for local_var_fn in $(f2e "${PLT_PATH}/actio/mall/dir_f3dparr_/.d.ax/.sal.ax/f3dparr_.local.list"); do
# echo -e "${GREEN}$local_var_fn = $local_var_fn${NORMAL}" #print variable
eval local "$local_var_fn"
local_var_fn_arr+=("${local_var_fn}")
done
for local_var_wrap in $(f2e "${PLT_PATH}/.d/.nid/mall/mall.local"); do
# echo -e "${GREEN}$local_var_wrap = $local_var_wrap${NORMAL}" #print variable
eval local "$local_var_wrap"
local_var_wrap_arr+=("${local_var_wrap}")
done
# echo ". ${PLT_PATH}/.d/.nid/mall.nid"
if ! . "${PLT_PATH}/.d/.nid/mall/mall.const"; then
${_plt_exit} "fail: . ${PLT_PATH}/.d/.nid/mall/mall.const"
return 1
fi
# echo ". ${FN_SAL_DIR}/f3dparr_.body.nsc.sh"
if ! . "${PLT_PATH}/actio/mall/dir_f3dparr_/.d.ax/.sal.ax/f3dparr_.body.nsc.sh"; then
${_plt_exit} "fail: . ${PLT_PATH}/actio/mall/dir_f3dparr_/.d.ax/.sal.ax/f3dparr_.body.sh"
return 1
fi
cd "$PPWD" 1>/dev/null || plt_exit "fail : cd $PPWD"
    #{init_body}

}

f3dparr_c_() {

    local ratis=1

local dir_fns_="${PLT_PATH}/actio/mall"
    #{def_const}

    #{ctrl_args}

local ARGS=($@)
local FNN=f3dparr_
# echo ". ${FN_SAL_DIR}/f3dparr_.body.nsc.sh"
if ! . "${PLT_PATH}/actio/mall/dir_f3dparr_/.d.ax/.sal.ax/f3dparr_.body.nsc.sh"; then
${_plt_exit} "fail: . ${PLT_PATH}/actio/mall/dir_f3dparr_/.d.ax/.sal.ax/f3dparr_.body.sh"
return 1
fi
    #{init_body_c}

}

f3dparr_g_() {

    local ratis=2

local dir_fns_="${PLT_PATH}/actio/mall"
    #{def_const}

    #{ctrl_args}

local ARGS=($@)
local FNN=f3dparr_
# if ! ${_garg2e2_} "${ARGS[@]}" 1>/dev/null; then
if ! ${_garg2e2_} "${ARGS[@]}"; then
${_plt_exit} " f3dparr_ return 1: ${FNLOCK}"
return 1
fi
#? g_args with cntl=value
local g_args=($(${_garg2e2_} "${ARGS[@]}"))
#? e_args is {ARGS[@]} without cntl and cmtl_value - as it's free
local e_args=($(${_earg2e2_} "${ARGS[@]}"))
[[ 1 -eq ${verbose} ]] || echo -e "${GREEN}${g_args[@]}: ${g_args[*]}${NORMAL}" #print variable
local strex
for strex in $(${_garg2e2_} "${ARGS[@]}"); do
[[ 1 -eq ${verbose} ]] || echo "local $strex"
eval local $strex
done
# echo ". ${FN_SAL_DIR}/f3dparr_.body.nsc.sh"
if ! . "${PLT_PATH}/actio/mall/dir_f3dparr_/.d.ax/.sal.ax/f3dparr_.body.nsc.sh"; then
${_plt_exit} "fail: . ${PLT_PATH}/actio/mall/dir_f3dparr_/.d.ax/.sal.ax/f3dparr_.body.sh"
return 1
fi
    #{init_body_g}

}

# f3dparr_ @

unset filename
