#!/bin/bash
#? return 2 => return 0, return 3 => return 1
#{pre}

02_del_arb_proc_fol__04_arb_flow_phylum_a_sil() {

    echo -e "${CYAN}--- 02_del_arb_proc_fol__04_arb_flow_phylum_a_sil() file://${PLT_PATH}/.d/.sil.ax/phylum_a.sil/proc/fol_/04_arb_flow/02_del_arb_proc_fol__04_arb_flow_phylum_a_sil.sh ---${NORMAL}" #sistem info mesage
    echo -e "${CYAN}--- MAIN: flow --_arb -_del_arb ---${NORMAL}"                                                                                                                                                             #sistem info mesage
    #{body}
    if [ "${delarb_:-0}" -eq 1 ]; then

        plt_pause "in fol_() : DO? : delete arbor : file://${arb_}"

        if [ -d "${arb_}" ]; then

            rm -rv "$(dirname "${arb_}")"/_"$(basename "${arb_}")"~

            if ! cp -rv "${arb_}" "$(dirname "${arb_}")"/_"$(basename "${arb_}")"~; then
                plt_exit "in fol_() : EXEC_FAIL : cp -rfv ${arb_} $(dirname ${arb_})/_$(basename ${arb_})~ return 1"
                return 1
            fi

            if ! rm -rfv "${arb_}"; then
                plt_exit "in fol_() : EXEC_FAIL : mkdir -pv ${arb_} return 1"
                return 1
            fi
        else
            plt_exit "in fol_() : NOT_DIR : not exist ${arb_} return 1"
            return 1
        fi

        echo -e "${CYAN}--- DELETE arbor ${arb_} from sil  ---${NORMAL}" #sistem info mesage

        return 0

    fi
}
