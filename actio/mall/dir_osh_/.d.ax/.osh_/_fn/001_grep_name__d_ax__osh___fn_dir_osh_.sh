#!/bin/bash
#? return 2 => return 0, return 3 => return 1
#{pre}

001_grep_name__d_ax__osh___fn_dir_osh_() {

    echo -e "${CYAN}--- 001_grep_name__d_ax__osh___fn_dir_osh_() file://${PLT_PATH}/actio/mall/dir_osh_/.d.ax/.osh_/_fn/001_grep_name__d_ax__osh___fn_dir_osh_.sh ---${NORMAL}" #sistem info mesage
    echo -e "${CYAN}--- MAIN: ---${NORMAL}"                                                                                                                                     #sistem info mesage
    # local first_arg=
    # first_arg=$1
    # if [ -z "${first_arg}" ]; then
    #     plt_info "001_grep_name__d_ax__osh___fn_dir_osh_() : $1 : args NOT_DEFINE : return 1"
    #     return 1
    # fi
    #! -------------- START check env -------------------
    if [ -z "${str_to_grep}" ]; then
        plt_info "in 002_grep_tag__d_ax__osh___fn_dir_osh_() : NOT_DEFINE : '${str_to_grep}' : return 1"
        return 1
    fi

        if [ -z "${arb_osh_dir}" ]; then
        plt_info "in 002_grep_tag__d_ax__osh___fn_dir_osh_() : NOT_DEFINE : '${arb_osh_dir}' : return 1"
        return 1
    fi
    #! -------------- END check env -------------------
    #{body}
    for name_ram in $(d2e_ -n -dd ${arb_osh_dir} "ram "); do

    echo -e "${GREEN}\$item1 = $item1${NORMAL}" #print variable

done

}
