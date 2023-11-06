#!/bin/bash

#! debag
# . "${HOME}/.bashrc"
#!

filename="${PLT_PATH}/actio/mall/dir__tmp_/_tmp_.nsc.sh"

echo -e "${HLIGHT}--- start file: $filename with args: $@ ---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git

_tmp_() {

    local ratis=0

    local dir_fns_="${PLT_PATH}/actio/mall"
    #{def_const}

    #{ctrl_args}

    local ARGS=($@)
    local NARGS=${#ARGS[@]}
    local FNN=_tmp_
    local local_var_wrap
    local local_var_wrap_arr=()
    local local_var_fn
    local local_var_fn_arr=()

    #* ------------
    local local_arg_fn
    local local_arg_fn_arr=()
    local local_env_fn
    local local_env_fn_arr=()
    local local_def_pts_fn
    local local_def_pts_fn_arr=()

    #* ------------

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
    #! ----- START COMMENT IF NOT USED ${_garg2e2_} -----
    # if ! ${_garg2e2_} "${ARGS[@]}" 1>/dev/null; then
    if ! ${_garg2e2_} "${ARGS[@]}"; then
        ${_plt_exit} " _tmp_ return 1: ${FNLOCK}"
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
    for local_var_fn in $(f2e "${PLT_PATH}/actio/mall/dir__tmp_/.d.ax/.sal.ax/_tmp_.local.list"); do
        # echo -e "${GREEN}$local_var_fn = $local_var_fn${NORMAL}" #print variable
        eval local "$local_var_fn"
        local_var_fn_arr+=("${local_var_fn}")
    done

    #* -------------

    if [ -f "${obc_:-0}" ]; then
        for local_arg_fn in $(f2e "${obc_}"); do
            # echo -e "${GREEN}$local_var_fn = $local_var_fn${NORMAL}" #print variable
            eval local "$local_arg_fn"
            local_arg_fn_arr+=("${local_arg_fn}")
        done
    fi

    if [ -f "${aer_:-0}" ]; then
        for local_env_fn in $(f2e "${obc_}"); do
            # echo -e "${GREEN}$local_var_fn = $local_var_fn${NORMAL}" #print variable
            eval local "$local_env_fn"
            local_env_fn_arr+=("${local_env_fn}")
        done
    fi

    if [ -f "${pts_:-0}" ]; then
        for local_def_pts_fn in $(f2e "${pts_}"); do
            echo -e "${GREEN}\$local_def_pts_fn = $local_def_pts_fn${NORMAL}" #print variable

            eval local val_"${local_def_pts_fn}"=\$"${local_def_pts_fn}"

            eval local elem="${local_def_pts_fn}=\$${local_def_pts_fn}"

            local_def_pts_fn_arr+=("${elem}")

        done

    fi

    #! see ${PATH_CURR_REPO}/NBash/_man/ptr/flow_1.sh
    if [ -n "${ppr_}" ]; then
        eval local val_ppr=\$${ppr_}
    fi

    # [obc] obiectum      - [аргументы] объект
    # [sub] subiectum     - [процедура] субъект
    # [aer] aer           - [окружение] воздух
    # [pts]               - [pointers]
    # [ppr] productum     - [глобальная ссылка на результат] продукт

    # [sag] sagitta       - [набор файлов] стрела

    #* -------------

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
    # echo ". ${FN_SAL_DIR}/_tmp_.body.nsc.sh"
    if ! . "${PLT_PATH}/actio/mall/dir__tmp_/.d.ax/.sal.ax/_tmp_.body.nsc.sh"; then
        ${_plt_exit} "fail: . ${PLT_PATH}/actio/mall/dir__tmp_/.d.ax/.sal.ax/_tmp_.body.sh"
        return 1
    fi
    cd "$PPWD" 1>/dev/null || plt_exit "fail : cd $PPWD"
    #{init_body}

}

# _tmp_ @

unset filename
