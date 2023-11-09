#!/bin/bash

#! debag
# . "${HOME}/.bashrc"
#!

filename="${PLT_PATH}/actio/mall/dir_ins_nod_/ins_nod_.nsc.sh"

echo -e "${HLIGHT}--- start file: $filename with args: $@ ---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git

ins_nod_() {

    local ratis=0

local dir_fns_="${PLT_PATH}/actio/mall"
    #{def_const}

    #{ctrl_args}

local ARGS=($@)
local NARGS=${#ARGS[@]}
local FNN=ins_nod_
local var_wrap
local var_wrap_arr=()
local var_fn
local var_fn_arr=()
local arg_fn
local arg_fn_arr=()
local env_fn
local env_fn_arr=()
local pts_fn
local pts_fn_arr=()
echo -e "${GREEN}\${ARGS[@]} = ${ARGS[*]}${NORMAL}" #print variable
if [ -n "${ARGS[0]}" ] && { [ "${ARGS[0]}" == '-h' ] || { [ "${ARGS[0]:0:1}" != "-" ] && [ -n "$(grep -w "${ARGS[0]}" "${PLT_PATH}/.d/.nid/mall/mall.cntl")" ]; }; }; then
for var_wrap in $(f2e "${PLT_PATH}/.d/.nid/mall/mall.local"); do
# echo -e "${GREEN}$var_wrap = $var_wrap${NORMAL}" #print variable
eval local "$var_wrap"
var_wrap_arr+=("${var_wrap}")
done
if ! . "${PLT_PATH}/.d/.nid/mall/mall.const"; then
${_plt_exit} "fail: . ${PLT_PATH}/.d/.nid/mall/mall.const"
return 1
fi
#? mapping standart fn const
# for var_const in $(f2e "${PLT_PATH}/.d/.nid/mall/mall.const"); do
#     # echo -e "${GREEN}$var_wrap = $var_wrap${NORMAL}" #print variable
#     eval local "$var_const"
#     # var_wrap_arr+=("${var_wrap}")
# done
#? exec cntl nid wrapper
if ! . "${PLT_PATH}/.d/.nid/mall/mall.nid"; then
${_plt_exit} "fail: . ${PLT_PATH}/.d/.nid/mall/mall.nid"
return 1
fi
echo -e "${HLIGHT}--- . ${PLT_PATH}/.d/.nid/mall/mall.nid, return 0 ---${NORMAL}" #start files
return 0
fi
#! ----- START COMMENT IF NOT USED ${_garg2e2_} -----
# if ! ${_garg2e2_} "${ARGS[@]}" 1>/dev/null; then
if ! ${_garg2e2_} "${ARGS[@]}"; then
${_plt_exit} " ins_nod_ return 1: ${FNLOCK}"
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
#! ----- END COMMENT IF NOT USED ${_garg2e2_} -----
#? mapping ${FNN}.local.list" file to var_fn_arr and local vars instead fn
for var_fn in $(f2e "${PLT_PATH}/actio/mall/dir__tmp_/.d.ax/.sal.ax/_tmp_.local.list"); do
# echo -e "${GREEN}$var_fn = $var_fn${NORMAL}" #print variable
eval local "$var_fn"
var_fn_arr+=("${var_fn}")
done
#? mapping obc_ file to env_fn_arr and local vars into fn as mutable internal values
if [ -f "${obc_:-0}" ]; then
for arg_fn in $(f2e "${obc_}"); do
# echo -e "${GREEN}$var_fn = $var_fn${NORMAL}" #print variable
eval local "$arg_fn"
arg_fn_arr+=("${arg_fn}")
done
fi
#? mapping aer_ file to env_fn_arr and local vars into fn as immutable external values
if [ -f "${aer_:-0}" ]; then
for env_fn in $(f2e "${aer_}"); do
# echo -e "${GREEN}$var_fn = $var_fn${NORMAL}" #print variable
eval local "$env_fn"
env_fn_arr+=("${env_fn}")
done
fi
#? visualisation pointers for use: mapping pts_ file to pts_fn_arr
if [ -f "${pts_:-0}" ]; then
for pts_fn in $(f2e "${pts_}"); do
pts_fn_arr+=("${pts_fn}")
done
fi
#! see ${PATH_CURR_REPO}/NBash/_man/ptr/flow_1.sh
if [ -n "${ppr_}" ]; then
eval local val_ppr=$${ppr_}
fi
# [obc] obiectum      - [аргументы] объект
# [sub] subiectum     - [процедура] субъект
# [aer] aer           - [окружение] воздух
# [pts]               - [pointers]
# [ppr] productum     - [глобальная ссылка на результат] продукт
# [sag] sagitta       - [набор файлов] стрела
#* -------------
#? mapping mall.local file to use in ${FNN}.body.nsc.sh
for var_wrap in $(f2e "${PLT_PATH}/.d/.nid/mall/mall.local"); do
# echo -e "${GREEN}$var_wrap = $var_wrap${NORMAL}" #print variable
eval local "$var_wrap"
var_wrap_arr+=("${var_wrap}")
done
# echo ". ${PLT_PATH}/.d/.nid/mall.nid"
if ! . "${PLT_PATH}/.d/.nid/mall/mall.const"; then
${_plt_exit} "fail: . ${PLT_PATH}/.d/.nid/mall/mall.const"
return 1
fi
# #? mapping standart fn const
# for var_const in $(f2e "${PLT_PATH}/.d/.nid/mall/mall.const"); do
#     # echo -e "${GREEN}$var_wrap = $var_wrap${NORMAL}" #print variable
#     eval local "$var_const"
#     # var_wrap_arr+=("${var_wrap}")
# done
#? exec main fn procedore
if ! . "${PLT_PATH}/actio/mall/dir_ins_nod_/.d.ax/.sal.ax/ins_nod_.body.nsc.sh"; then
${_plt_exit} "fail: . ${PLT_PATH}/actio/mall/dir_ins_nod_/.d.ax/.sal.ax/ins_nod_.body.sh"
return 1
fi
cd "$PPWD" 1>/dev/null || plt_exit "fail : cd $PPWD"
    #{init_body}

}

# ins_nod_ @

unset filename
