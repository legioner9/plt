#!/bin/bash
#? return 2 => return 0, return 3 => return 1
#{pre}

003_E_proc_garb__phylum_a_sil() {

    echo -e "${CYAN}--- 003_E_proc_garb__phylum_a_sil() file://${PLT_PATH}/.d/.sil.ax/phylum_a.sil/proc/garb_/003_E_proc_garb__phylum_a_sil.sh ---${NORMAL}" #sistem info mesage
    echo -e "${CYAN}--- MAIN: ---${NORMAL}"                                                                                                                  #sistem info mesage
    # local first_arg=
    # first_arg=$1
    # if [ -z "${first_arg}" ]; then
    #     plt_info "003_E_proc_garb__phylum_a_sil() : $1 : args NOT_DEFINE : return 1"
    #     return 1
    # fi
    #! -------------- START check env -------------------
    if [ -z "${arb_osh_dir}" ]; then
        plt_info "in 003_E_proc_garb__phylum_a_sil() : NOT_DEFINE : '\${arb_osh_dir}' : return 1"
        return 1
    fi
    #! -------------- END check env -------------------
    #{body}

    dir_sil=${SIL_A}
    dir_arb=${arb_osh_dir}

    echo -e "${HLIGHT}--- fol_ --_sil ${dir_sil} --_arb ${dir_arb} -_E ---${NORMAL}" #start files

    fol_ \
        --_sil "${dir_sil}" \
        --_arb "${dir_arb}" \
        -_E
    return 0

}
