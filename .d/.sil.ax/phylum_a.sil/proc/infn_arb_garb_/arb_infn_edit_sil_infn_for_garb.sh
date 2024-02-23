#!/bin/bash
#? return 2 => return 0, return 3 => return 1
#{pre}

arb_infn_edit_sil_infn_for_garb() {

    echo -e "${CYAN}--- XXX() file://${arb_path}/_proc/infn/arb_infn_edit_sil_infn_for_garb.sh ---${NORMAL}" #sistem info mesage
    echo -e "${CYAN}--- MAIN: ---${NORMAL}"                                      #sistem info mesage

    # local first_arg=
    # first_arg=$1
    # if [ -z "${first_arg}" ]; then
    #     plt_info "001_infn() : $1 : args NOT_DEFINE : return 1"
    #     return 1
    # fi
    #! -------------- START check env -------------------
    if [ -z "${arb_path}" ]; then
        plt_info "in garb__infn() : NOT_DEFINE : '\${arb_path}' : return 1"
        return 1
    fi

    if [ -z "${ram_name}" ]; then
        plt_info "in garb__infn() : NOT_DEFINE : '\${ram_name}' : return 1"
        return 1
    fi

    #! -------------- END check env -------------------
    #{body}

    #? ${SIL_A}/proc/infn_arb_garb_

    "${_edit_}" ${SIL_A}/proc/infn_arb_garb_

}

arb_infn_edit_sil_infn_for_garb
