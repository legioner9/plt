#!/bin/bash
#? return 2 => return 0, return 3 => return 1
#{pre}

02_del_arb_04_arb_flow_a_() {

    echo -e "${CYAN}--- 02_del_arb_04_arb_flow_a_() file://{path_file} ---${NORMAL}" #sistem info mesage
    echo -e "${CYAN}--- MAIN: ---${NORMAL}"                                          #sistem info mesage
    #{body}

    if [ "${delarb_:-0}" -eq 1 ]; then

        plt_pause "in fol_() : DO? : delete arbor : file://${arb_}"

        if [ -d "${arb_}" ]; then
            if ! cp -rfv "${arb_}" "$(dirname "${arb_}")"/_"$(basename "${arb_}")"~; then
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
