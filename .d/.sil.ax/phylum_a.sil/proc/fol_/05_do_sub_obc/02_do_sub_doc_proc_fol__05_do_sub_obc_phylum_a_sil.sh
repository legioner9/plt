#!/bin/bash
#? return 2 => return 0, return 3 => return 1
#{pre}

02_do_sub_doc_proc_fol__05_do_sub_obc_phylum_a_sil() {

    echo -e "${BLUE}--- 02_do_sub_doc_proc_fol__05_do_sub_obc_phylum_a_sil() file://${PLT_PATH}/.d/.sil.ax/phylum_a.sil/proc/fol_/05_do_sub_obc/02_do_sub_doc_proc_fol__05_do_sub_obc_phylum_a_sil.sh ---${NORMAL}" #sistem info mesage
    echo -e "${CYAN}--- MAIN: do sub obc ---${NORMAL}"                                                                                                                                                              #sistem info mesage
    #{body}

    # fol_mm_

    #* do with .fol, sub is f_... in phylum_a.sil/vis/sh
    if [ -n "${sub}" ] && [ -n "${obc}" ] && [ -n "${ram_}" ]; then
        if [ "${sub:0:2}" == "f_" ] && [ -f "${arb_}/${ram_}.ram/${obc}.fol" ]; then
            echo -e "${HLIGHT}--- . ${sil_}/vis/sh/"${sub}" ${arb_}/${ram_}.ram/${obc}.fol ---${NORMAL}" #start files
            . ${sil_}/vis/sh/"${sub}" "${arb_}/${ram_}.ram/${obc}.fol"
        fi
        return 2
    fi

    if [ -n "${sub}" ] && [ "${obc}" == "0" ] && [ -n "${ram_}" ]; then
        if [ "${sub:0:2}" == "r_" ] && [ -d "${arb_}/${ram_}.ram" ]; then
            . ${sil_}/vis/sh/"${sub}" "${arb_}/${ram_}.ram"
        fi
        return 2
    fi

    if [ -n "${sub}" ] && [ "${obc}" == "0" ] && [ -n "${ram_}" ]; then
        if [ "${sub:0:2}" == "a_" ] && [ -d "${arb_}" ]; then
            . ${sil_}/vis/sh/"${sub}" "${arb_}"
        fi
        return 2
    fi

}
