#!/bin/bash
#? return 2 => return 0, return 3 => return 1
#{pre}

004_all_name_proc_garb__phylum_a_sil() {

    echo -e "${CYAN}--- 004_all_name_proc_garb__phylum_a_sil() file://${PLT_PATH}/.d/.sil.ax/phylum_a.sil/proc/garb_/004_all_name_proc_garb__phylum_a_sil.sh ---${NORMAL}" #sistem info mesage
    echo -e "${CYAN}--- MAIN: ---${NORMAL}"                                                                                                                                #sistem info mesage
    # local first_arg=
    # first_arg=$1
    # if [ -z "${first_arg}" ]; then
    #     plt_info "004_all_name_proc_garb__phylum_a_sil() : $1 : args NOT_DEFINE : return 1"
    #     return 1
    #! -------------- START check env -------------------
    if [ -z "${arb_path}" ]; then
        plt_info "in 002_grep_type__d_ax__osh___fn_dir_osh_() : NOT_DEFINE : '\${arb_path}' : return 1"
        return 1
    fi
    #! -------------- END check env -------------------
    #{body}

    local arr_name_ram

    arr_name_ram=()

    for name_ram in $(d2e_ -n -dd ${arb_path} "ram "); do
        arr_name_ram+=("${name_ram}")
    done

    arr_name_ram+=("exit")

    PS3="eligendi actiones to exec or exit: "

    select item_arr_name_ram in ${arr_name_ram[@]}; do

        if [[ "${item_arr_name_ram}" == "exit" ]]; then
            plt_info "return 0"
            return 0
        fi

        #! env for  ${ram_name} arb _proc/infn
        local ram_name=${item_arr_name_ram}
        006_choice_infn_arb_proc_garb__phylum_a_sil
        return 0
    done
    return 0

}
