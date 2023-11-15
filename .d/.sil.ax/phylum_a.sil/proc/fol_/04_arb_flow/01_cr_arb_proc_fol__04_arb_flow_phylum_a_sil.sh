#!/bin/bash
#? return 2 => return 0, return 3 => return 1
#{pre}

01_cr_arb_proc_fol__04_arb_flow_phylum_a_sil() {

    echo -e "${CYAN}--- 01_cr_arb_proc_fol__04_arb_flow_phylum_a_sil() file://${PLT_PATH}/.d/.sil.ax/phylum_a.sil/proc/fol_/04_arb_flow/01_cr_arb_proc_fol__04_arb_flow_phylum_a_sil.sh ---${NORMAL}" #sistem info mesage
    echo -e "${CYAN}--- MAIN: ---${NORMAL}"                                                                                                                                                           #sistem info mesage
    #{body}

    if [ "${crarb_:-0}" -eq 1 ]; then

        plt_pause "in fol_() : DO? : create arbor : file://${arb_}"

        if ! [ -d "${arb_}" ]; then
            if ! mkdir -pv "${arb_}"; then
                plt_exit "in fol_() : EXEC_FAIL : mkdir -pv ${arb_} return 1"
                return 1
            fi
        else
            plt_exit "in fol_() : DIR : already exist ${arb_} return 1"
            return 1
        fi

        if ! cp -rv "${sil_}"/arb/. ${arb_}; then
            plt_exit "in fol_() : EXEC_FAIL : cp -rv ${sil_}/arb/. ${arb_} return 1"
            return 1
        fi

        echo -e "${CYAN}--- CREATE arbor ${arb_} from sil  ---${NORMAL}" #sistem info mesage

        # . ${sil_}/paratus_sil.sh
        # . ${arb_}/paratus_arb.sh

        # arb_rams=${arb_}/all_ramus_name.lst

        fol_show_arb_rams_

        return 0

    fi

}
