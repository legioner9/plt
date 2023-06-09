    if typeset -F | grep -w ${name_fn_}; then
        plt_exit " not unique --_name_fn: ${name_fn_} "
        return 1
    fi

    if [ -d ${dir_fns_} ]; then
        cd ${dir_fns_}
    else
        plt_exit " not exist dir --_dir_fns: ${dir_fns_} "
        return 1
    fi

    if ! is_num ${flow_}; then
        plt_exit " not a number --_dir_fns: ${flow_} "
        return 1
    fi

    ${_exl_} --list ${PLT_PATH}/.d/.mul/fp_f_/env/flow_env.exl

    plt_pause "(${name_fn_}) create flow=${flow_} !!! in ($PWD/dir_${name_fn_}/) ?"

    # exl_ --list "${exl_file}"
    # echo | . ${sh_file}

    . ${main_sh}