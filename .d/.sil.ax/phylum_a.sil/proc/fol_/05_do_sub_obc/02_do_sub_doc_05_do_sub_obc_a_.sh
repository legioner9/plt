#!/bin/bash
#? return 2 => return 0, return 3 => return 1
#{pre}

02_do_sub_doc_05_do_sub_obc_a_() {

    echo -e "${CYAN}--- 02_do_sub_doc_05_do_sub_obc_a_() file://{path_file} ---${NORMAL}" #sistem info mesage
    echo -e "${CYAN}--- MAIN: DO sub obc if ram_ define ---${NORMAL}"                     #sistem info mesage
    #{body}

    #* do with .fol, sub is f_... in phylum_a.sil/vis/sh
    if [ -n "${sub}" ] && [ -n "${obc}" ] && [ -n "${ram_}" ]; then
        if [ "${sub:0:2}" == "f_" ] && [ -f "${arb_}/${ram_}.ram/${obc}.fol" ]; then
            echo -e "${HLIGHT}--- ${sub:2} ${arb_}/${ram_}.ram/${obc}.fol ---${NORMAL}" #start files
            "${sub:2}" "${arb_}/${ram_}.ram/${obc}.fol"
        fi
        return 0
    fi

    if [ -n "${sub}" ] && [ "${obc}" == "0" ] && [ -n "${ram_}" ]; then
        if [ "${sub:0:2}" == "r_" ] && [ -d "${arb_}/${ram_}.ram" ]; then
            "${sub:2}" "${arb_}/${ram_}.ram"
        fi
        return 0
    fi

    if [ -n "${sub}" ] && [ "${obc}" == "0" ] && [ -n "${ram_}" ]; then
        if [ "${sub:0:2}" == "a_" ] && [ -d "${arb_}" ]; then
            "${sub:2}" "${arb_}"
        fi
        return 0
    fi

}
