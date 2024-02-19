#!/bin/bash
#? return 2 => return 0, return 3 => return 1
#{pre}

004_all_name__d_ax__osh___fn_dir_osh_() {

    echo -e "${CYAN}--- 004_all_name__d_ax__osh___fn_dir_osh_() file://${PLT_PATH}/actio/mall/dir_osh_/.d.ax/.osh_/_fn/004_all_name__d_ax__osh___fn_dir_osh_.sh ---${NORMAL}" #sistem info mesage
    echo -e "${CYAN}--- MAIN: ---${NORMAL}"                                                                                                                                   #sistem info mesage
    # local first_arg=
    # first_arg=$1
    # if [ -z "${first_arg}" ]; then
    #     plt_info "004_all_name__d_ax__osh___fn_dir_osh_() : $1 : args NOT_DEFINE : return 1"
    #     return 1
    # fi
    #! -------------- START check env -------------------
    if [ -z "${arb_osh_dir}" ]; then
        plt_info "in 002_grep_type__d_ax__osh___fn_dir_osh_() : NOT_DEFINE : '\${arb_osh_dir}' : return 1"
        return 1
    fi
    #! -------------- END check env -------------------
    #{body}

    local arr_name_ram

    arr_name_ram=()

    for name_ram in $(d2e_ -n -dd ${arb_osh_dir} "ram "); do
        arr_name_ram+=("${name_ram}")
    done

    arr_name_ram+=("exit")

    PS3="eligendi actiones to exec or exit: "

    select item_arr_name_ram in ${arr_name_ram[@]}; do

        if [[ "${item_arr_name_ram}" == "exit" ]]; then
            plt_info "return 0"
            return 0
        fi
        echo -e "${HLIGHT}--- osh_ ${item_arr_name_ram} ---${NORMAL}" #start files
        osh_ "${item_arr_name_ram}"
        return 0
    done
    return 0

}
