#!/bin/bash
#? return 2 => return 0, return 3 => return 1
#{pre}

02_do_sub_doc_proc_fol__05_do_sub_obc_phylum_a_sil() {

    echo -e "${BLUE}--- 02_do_sub_doc_proc_fol__05_do_sub_obc_phylum_a_sil() file://${PLT_PATH}/.d/.sil.ax/phylum_a.sil/proc/fol_/05_do_sub_obc/02_do_sub_doc_proc_fol__05_do_sub_obc_phylum_a_sil.sh ---${NORMAL}" #sistem info mesage
    echo -e "${CYAN}--- MAIN: do sub obc ---${NORMAL}"                                                                                                                                                              #sistem info mesage
    #{body}

    # fol_mm_
    # arb_/_proc/sub

    #* do with .fol, sub is f_... in phylum_a.sil/vis/sh
    if [ -n "${sub}" ] && [ -n "${obc}" ] && [ -n "${ram_}" ]; then
        if [ "${sub:0:2}" == "sf_" ] && [ -f "${arb_}/${ram_}.ram/${obc}.fol" ]; then

            echo -e "${HLIGHT}--- . ${sil_}/vis/sh/"${sub}" ${arb_}/${ram_}.ram/${obc}.fol ---${NORMAL}" #start files

            if ! [[ -f ${sil_}/vis/sh/"${sub}" ]]; then
                plt_exit "in ${FNN} : NOT_FILE : ${sil_}/vis/sh/${sub} return 3"
                return 3
            fi

            if ! . ${sil_}/vis/sh/"${sub}" "${arb_}/${ram_}.ram/${obc}.fol"; then
                plt_exit "in ${FNN} : EXEC_FAIL : . ${sil_}/vis/sh/${sub} ${arb_}/${ram_}.ram/${obc}.fol : return 3"
                return 3
            fi
        fi
        return 2
    fi

    if [ -n "${sub}" ] && [ "${obc}" == "0" ] && [ -n "${ram_}" ]; then
        if [ "${sub:0:2}" == "sr_" ] && [ -d "${arb_}/${ram_}.ram" ]; then

            echo -e "${HLIGHT}--- . ${sil_}/vis/sh/"${sub}" "${arb_}/${ram_}.ram" ---${NORMAL}" #start files

            if ! [[ -f ${sil_}/vis/sh/"${sub}" ]]; then
                plt_exit "in ${FNN} : NOT_FILE : ${sil_}/vis/sh/${sub} return 3"
                return 3
            fi

            if ! . ${sil_}/vis/sh/"${sub}" "${arb_}/${ram_}.ram"; then
                plt_exit "in ${FNN} : EXEC_FAIL : ${sil_}/vis/sh/"${sub}" "${arb_}/${ram_}.ram" return 3"
                return 3
            fi

        fi

        return 2
    fi

    if [ -n "${sub}" ] && [ "${obc}" == "0" ] && [ -n "${arb_}" ]; then
        if [ "${sub:0:2}" == "sa_" ] && [ -d "${arb_}" ]; then

            if ! [[ -f ${sil_}/vis/sh/"${sub}" ]]; then
                plt_exit "in ${FNN} : NOT_FILE : ${sil_}/vis/sh/${sub} return 3"
                return 3
            fi
            . ${sil_}/vis/sh/"${sub}" "${arb_}"
        fi
        return 2
    fi

}
