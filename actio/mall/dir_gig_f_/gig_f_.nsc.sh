#!/bin/bash

#! debag
# . "${HOME}/.bashrc"
#!

filename="${PLT_PATH}/actio/mall/dir_gig_f_/gig_f_.sh"

echo -e "${HLIGHT}--- start file: $filename with args: $@ ---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git

gig_f_() {

    local dir_fn_="/home/st/REPOBARE/_repo/plt/actio/mall"
    #{def_const}

    #{ctrl_args}

    local ARGS=($@)

    local FNN=${FUNCNAME[0]}

    # if ! ${_garg2e2_} "${ARGS[@]}" 1>/dev/null; then
    if ! ${_garg2e2_} "${ARGS[@]}"; then
        ${_plt_exit} " ${FNN} return 1: ${FNLOCK}"
        return 1
    fi
    #? g_args with cntl=value
    g_args=($(${_garg2e2_} "${ARGS[@]}"))
    #? e_args is {ARGS[@]} without cntl and cmtl_value - as it's free
    e_args=($(${_earg2e2_} "${ARGS[@]}"))

    [[ 1 -eq ${verbose} ]] || echo -e "${GREEN}\${g_args[@]}: ${g_args[*]}${NORMAL}" #print variable

    local strex
    for strex in $(${_garg2e2_} "${ARGS[@]}"); do
        [[ 1 -eq ${verbose} ]] || echo "local $strex"
        eval local $strex
    done

    local local_var_wrap
    local local_var_wrapr_arr=()

    local local_var_fn
    local local_var_fn_arr=()

    for local_var_fn in $(f2e "${dir_fn_}/dir_${FNN}/.d.ax/.sal.ax/${FNN}.local.list"); do

        # echo -e "${GREEN}\$local_var_fn = $local_var_fn${NORMAL}" #print variable
        eval local "$local_var_fn"
        local_var_fn_arr+=("${local_var_fn}")

    done

    for local_var_wrap in $(f2e "${PLT_PATH}/.d/.nid/mall/mall.local"); do

        # echo -e "${GREEN}\$local_var_wrap = $local_var_wrap${NORMAL}" #print variable
        eval local "$local_var_wrap"
        local_var_wrap_arr+=("${local_var_wrap}")

    done

    # echo ". ${PLT_PATH}/.d/.nid/mall.nid"
    if ! . "${PLT_PATH}/.d/.nid/mall_v2.nid"; then
        ${_plt_exit} "fail: . ${PLT_PATH}/.d/.nid/mall_v2.nid"
        return 1
    fi
    if [[ -n "${ARGS1}" ]] && [[ "${cntl_args[@]}" =~ "${ARGS1}" ]]; then
        return 0
    fi
    # echo ". ${FN_SAL_DIR}/gig_f_.body.nsc.sh"
    if ! . "${dir_fn_}/dir_${FNN}/.d.ax/.sal.ax/${FNN}.body.nsc.sh"; then
        ${_plt_exit} "fail: . ${dir_fn_}/dir_${FNN}/.d.ax/.sal.ax/${FNN}.body.nsc.sh"
        return 1
    fi
    cd "$PPWD" 1>/dev/null || plt_exit "fail : cd $PPWD"
    #{init_body}

}

# gig_f_ @

unset filename
