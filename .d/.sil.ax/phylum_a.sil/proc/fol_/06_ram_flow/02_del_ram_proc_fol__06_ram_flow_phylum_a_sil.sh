#!/bin/bash
#? return 2 => return 0, return 3 => return 1
#{pre}

02_del_ram_proc_fol__06_ram_flow_phylum_a_sil() {

    echo -e "${CYAN}--- 02_del_ram_proc_fol__06_ram_flow_phylum_a_sil() file://${PLT_PATH}/.d/.sil.ax/phylum_a.sil/proc/fol_/06_ram_flow/02_del_ram_proc_fol__06_ram_flow_phylum_a_sil.sh ---${NORMAL}" #sistem info mesage
    echo -e "${CYAN}--- MAIN: ---${NORMAL}"                                                                                                                                                             #sistem info mesage
    #{body}

    if [ "${delram_:-0}" -eq 1 ]; then

        if [ -z "${ram_}" ]; then
            fol_delram_() {

                # plt_pause "in fol_() : DO?: for (ram_='${ram_}') delete tag in file://${ram_tag_file}"
                fol_show_arb_rams_

                arr_4=($("${_f2e}" "${arb_rams}"))

                PS3="eligendi actiones choice ram_ to delete from file://${arb_}: "
                select item7 in "${arr_4[@]}"; do
                    ram_to_delete=${item7}
                    break
                done

                if [ -d ${arb_}/${ram_to_delete}.ram ]; then
                    plt_pause "in : DO? : rm -r ${arb_}/${ram_to_delete}.ram"

                    echo -e "${CYAN}--- cp -r ${arb_}/${ram_to_delete}.ram ${arb_}/${ram_to_delete}.ram~ ---${NORMAL}" #sistem info mesage

                    if ! cp -r ${arb_}/${ram_to_delete}.ram ${arb_}/_${ram_to_delete}.ram~; then
                        plt_info "in in fol_() : EXEC_FAIL : cp -r ${arb_}/${ram_to_delete}.ram ${arb_}/_${ram_to_delete}.ram~"
                    fi

                    if ! rm -r ${arb_}/${ram_to_delete}.ram; then
                        plt_info "in in fol_() : EXEC_FAIL : rm -r ${arb_}/${ram_to_delete}.ram"
                    fi

                else
                    plt_info "in fol_() : NOT_DIR : not exist '${ram_to_delete}' : file://${arb_}/${ram_to_delete}.ram"
                fi

                echo -e "${CYAN}--- in fol_() : CREATE : file://${ram_to_delete} ---${NORMAL}" #sistem info mesage

                . ${arb_}/paratus_arb.sh

                fol_show_arb_rams_

            }

            while true; do
                if ! plt_ques_exec fol_delram_; then
                    break
                fi
            done

        else

            ram_to_delete=${arb_}/${ram_}.ram

            if [ -d "${ram_to_delete}" ]; then
                plt_pause "in : DO? : rm -r ${ram_to_delete}"

                echo -e "${CYAN}--- cp -r ${ram_to_delete} ${arb_}/_${ram_}.ram~ ---${NORMAL}" #sistem info mesage

                if ! cp -r ${ram_to_delete} ${arb_}/_${ram_}.ram~; then
                    plt_info "in in fol_() : EXEC_FAIL : cp -r ${ram_to_delete} ${arb_}/_${ram_}.ram~"
                    return 3
                fi

                if ! rm -r ${ram_to_delete}; then
                    plt_info "in in fol_() : EXEC_FAIL : rm -r ${ram_to_delete}"
                    return 3
                fi

            else
                plt_info "in fol_() : NOT_DIR : not exist '${ram_}' : file://${ram_to_delete}"
                return 3
            fi

            echo -e "${CYAN}--- in fol_() : DELETE : file://${ram_to_delete} ---${NORMAL}" #sistem info mesage

            . ${arb_}/paratus_arb.sh

            fol_show_arb_rams_

            return 2
        fi

    fi

}
