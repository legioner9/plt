#!/bin/bash
#? return 2 => return 0, return 3 => return 1
#{pre}

006_choice_infn_arb_proc_garb__phylum_a_sil() {

    echo -e "${CYAN}--- 006_chice_infn_arb_proc_garb__phylum_a_sil() file://${PLT_PATH}/.d/.sil.ax/phylum_a.sil/proc/garb_/006_choice_infn_arb_proc_garb__phylum_a_sil.sh ---${NORMAL}" #sistem info mesage
    echo -e "${CYAN}--- MAIN: ---${NORMAL}"                                                                                                                                             #sistem info mesage
    # local first_arg=
    # first_arg=$1
    # if [ -z "${first_arg}" ]; then
    #     plt_info "006_chice_infn_arb_proc_garb__phylum_a_sil() : $1 : args NOT_DEFINE : return 1"
    #     return 1
    # fi
    #! -------------- START check env -------------------

    if [ -z "${arb_osh_dir}" ]; then
        plt_info "in 006_choice_infn_arb_proc_garb__phylum_a_sil() : NOT_DEFINE : '\${arb_osh_dir}' : return 1"
        return 1
    fi

    if [ -z "${item_arr_name_ram}" ]; then
        plt_info "in 006_choice_infn_arb_proc_garb__phylum_a_sil() : NOT_DEFINE : '\${item_arr_name_ram}' : return 1"
        return 1
    fi
    
    #! -------------- END check env -------------------

    #{body}

}
