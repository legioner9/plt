#!/bin/bash

#! debag
# . "${HOME}/.bashrc"
#!

filename="${PLT_PATH}/actio/mall/dir_gig_f_/gig_f_extst/extst_1/ex1/_deb/res/dir_lg1_/lg1_.sh"

echo -e "${HLIGHT}--- start file: $filename with args: $@ ---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git

lg1_() {

    local dir_fns_="${PLT_PATH}/actio/mall/dir_gig_f_/gig_f_extst/extst_1/ex1/_deb/res"
    #{def_const}

    #{ctrl_args}

    local ARGS=($@)
    local FNN=${FUNCNAME[0]}

    echo -e "${GREEN}\${ARGS[@]} = ${ARGS[*]}${NORMAL}" #print variable

    if [ -n "${ARGS[0]}" ] && [ "${ARGS[0]}" == '-h' ] || [ -n "$(grep -h '^'"${ARGS[1]}"'$' "${PLT_PATH}/.d/.nid/mall/mall.cntl")" ]; then

        if ! . "${PLT_PATH}/.d/.nid/mall/mall.const"; then
            ${_plt_exit} "fail: . ${PLT_PATH}/.d/.nid/mall/mall.const"
            return 1
        fi

        if ! . "${PLT_PATH}/.d/.nid/mall/mall.nid"; then
            ${_plt_exit} "fail: . ${PLT_PATH}/.d/.nid/mall/mall.nid"
            return 1
        fi
        echo -e "${HLIGHT}--- . ${PLT_PATH}/.d/.nid/mall/mall.nid ---${NORMAL}" #start files
        return 0

    fi

    echo -e "1 ${GREEN}\$FNN = $FNN${NORMAL}" #print variable

    # if ! ${_garg2e2_} "${ARGS[@]}" 1>/dev/null; then
    if ! ${_garg2e2_} "${ARGS[@]}"; then
        ${_plt_exit} " ${FNN} return 1: ${FNLOCK}"
        return 1
    fi

    echo -e "2 ${GREEN}\$FNN = $FNN${NORMAL}" #print variable

    #? g_args with cntl=value
    local g_args=($(${_garg2e2_} "${ARGS[@]}"))

    echo -e "3 ${GREEN}\$FNN = $FNN${NORMAL}" #print variable

    #? e_args is {ARGS[@]} without cntl and cmtl_value - as it's free
    local e_args=($(${_earg2e2_} "${ARGS[@]}"))
    [[ 1 -eq ${verbose} ]] || echo -e "${GREEN}${g_args[@]}: ${g_args[*]}${NORMAL}" #print variable
    local strex
    for strex in $(${_garg2e2_} "${ARGS[@]}"); do
        [[ 1 -eq ${verbose} ]] || echo "local $strex"
        eval local $strex
    done

    echo -e "4 ${GREEN}\$FNN = $FNN${NORMAL}" #print variable

    local local_var_wrap
    local local_var_wrap_arr=()
    local local_var_fn
    local local_var_fn_arr=()
    for local_var_fn in $(f2e "${PLT_PATH}/actio/mall/dir_gig_f_/gig_f_extst/extst_1/ex1/_deb/res/dir_${FNN}/.d.ax/.sal.ax/${FNN}.local.list"); do
        # echo -e "${GREEN}$local_var_fn = $local_var_fn${NORMAL}" #print variable
        eval local "$local_var_fn"
        local_var_fn_arr+=("${local_var_fn}")
    done
    for local_var_wrap in $(f2e "${PLT_PATH}/.d/.nid/mall/mall.local"); do
        # echo -e "${GREEN}$local_var_wrap = $local_var_wrap${NORMAL}" #print variable
        eval local "$local_var_wrap"
        local_var_wrap_arr+=("${local_var_wrap}")
    done

    echo -e "5 ${GREEN}\$FNN = $FNN${NORMAL}" #print variable

    # echo ". ${PLT_PATH}/.d/.nid/mall.nid"
    if ! . "${PLT_PATH}/.d/.nid/mall/mall.const"; then
        ${_plt_exit} "fail: . ${PLT_PATH}/.d/.nid/mall/mall.const"
        return 1
    fi

    echo -e "6 ${GREEN}\$FNN = $FNN${NORMAL}" #print variable

    # echo ". ${FN_SAL_DIR}/lg1_.body.nsc.sh"
    if ! . "${PLT_PATH}/actio/mall/dir_gig_f_/gig_f_extst/extst_1/ex1/_deb/res/dir_${FNN}/.d.ax/.sal.ax/lg1_.body.nsc.sh"; then
        ${_plt_exit} "fail: . ${PLT_PATH}/actio/mall/dir_gig_f_/gig_f_extst/extst_1/ex1/_deb/res/dir_${FNN}/.d.ax/.sal.ax/lg1_.body.sh"
        return 1
    fi

    echo -e "7 ${GREEN}\$FNN = $FNN${NORMAL}" #print variable

    cd "$PPWD" 1>/dev/null || plt_exit "fail : cd $PPWD"
    #{init_body}

}

# lg1_ @

unset filename
