#!/bin/bash
#? return 2 => return 0, return 3 => return 1
#{pre}

arb_infn_edit_infn_arb() {

    echo -e "${CYAN}--- arb_infn_edit_infn_arb() file://${arb_path}/_proc/infn/arb_infn_edit_infn_arb.sh ---${NORMAL}" #sistem info mesage
    echo -e "${CYAN}--- MAIN: ---${NORMAL}"                                                         #sistem info mesage

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

    #? ${PLT_PATH}/.d/.fs_standarts.ax/garb_/_proc/infn
    #? ${arb_path}/_proc/infn

    "${_edit_}" "${arb_path}"/_proc/infn

}

arb_infn_edit_infn_arb
