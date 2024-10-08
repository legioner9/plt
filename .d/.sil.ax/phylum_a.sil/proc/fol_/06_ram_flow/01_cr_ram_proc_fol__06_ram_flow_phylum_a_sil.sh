#!/bin/bash
#? return 2 => return 0, return 3 => return 1
#{pre}

01_cr_ram_proc_fol__06_ram_flow_phylum_a_sil() {

    echo -e "${CYAN}--- 01_cr_ram_proc_fol__06_ram_flow_phylum_a_sil() file://${PLT_PATH}/.d/.sil.ax/phylum_a.sil/proc/fol_/06_ram_flow/01_cr_ram_proc_fol__06_ram_flow_phylum_a_sil.sh ---${NORMAL}" #sistem info mesage
    echo -e "${CYAN}--- MAIN: create ram---${NORMAL}"                                                                                                                                                 #sistem info mesage
    #{body}

    if [ "${crram_:-0}" -eq 1 ]; then

        if [ -z "${ram_}" ]; then

            fol_crram_() {

                fol_show_arb_rams_

                if [ -z "${ram_}" ]; then

                    plt_pause "in fol_() : DO?: create ram on file://${arb_}"

                    read -p "Enter name ram_ (35<#, only w d _) " ram_

                    echo -e "${GREEN}\$ram_ = $ram_${NORMAL}" #print variable

                    ram_to_create=${arb_}/${ram_}.ram

                    if ! hook_before_crram_02_hooks_proc_fol__03_util_fn_phylum_a_sil; then
                        plt_exit "in ${FNN} : FAILEXEC : hook_before_crram_02_hooks_proc_fol__03_util_fn_phylum_a_sil return 3"
                        return 3
                    fi

                    if [ -n "${ram_}" ] && [ "${#ram_}" -le 35 ] && "${_is_eng_var_dot}" "${ram_}"; then

                        plt_pause "in : DO? : cp -r ${arb_}/_.ram/. ${arb_}/${ram_}.ram"

                        if ! [ -d "${arb_}/${ram_}.ram" ]; then

                            if ! cp -r ${arb_}/_.ram/. ${arb_}/${ram_}.ram; then
                                plt_pause "in in fol_() : EXEC_FAIL : ${arb_}/_.ram/. ${arb_}/${ram_}.ram"
                            fi
                            echo -e "${CYAN}--- in in fol_() : CREATE ${ram_}.ram : for (arb_='${arb_}') create ram_ file://${arb_}/${ram_}.ram ---${NORMAL}" #sistem info mesage

                            echo -e "${HLIGHT}--- ls -A ${arb_}/${ram_}.ram ---${NORMAL}" #start files
                            ls -A ${arb_}/${ram_}.ram

                        else
                            plt_info "in fol_() : DIR : already exist '${ram_}' file://${arb_}/${ram_}.ram"
                        fi
                    else
                        plt_info "in fol_() : NOT_IN_CONDITION : '${ram_}'"
                    fi

                fi

                ram_to_create=${arb_}/${ram_}.ram

                if ! hook_after_crram_02_hooks_proc_fol__03_util_fn_phylum_a_sil; then
                    plt_exit "in ${FNN} : FAILEXEC : hook_after_crram_02_hooks_proc_fol__03_util_fn_phylum_a_sil return 3"
                    return 3
                fi

                . ${arb_}/paratus_arb.sh

            }

            while true; do
                if ! plt_ques_exec fol_crram_; then
                    break
                fi
            done

            return 2
            
        else

            if ! [ -n "${ram_}" ] && [ "${#ram_}" -le 10 ] && "${_is_eng_var_dot}" "${ram_}"; then
                plt_exit "in fol_() : NOT_IN_CONDITION : '${ram_}' : return 1"
                return 3
            fi

            ram_to_create=${arb_}/${ram_}.ram

            if ! hook_before_crram_02_hooks_proc_fol__03_util_fn_phylum_a_sil; then
                plt_exit "in ${FNN} : FAILEXEC : hook_before_crram_02_hooks_proc_fol__03_util_fn_phylum_a_sil return 3"
                return 3
            fi

            plt_pause "in fol_() : DO? : create ram '"${ram_}"' on file://${arb_}"

            if ! [ -d "${ram_to_create}" ]; then

                if ! cp -r cp -r ${arb_}/_.ram/. ${arb_}/${ram_}.ram; then
                    plt_pause "in in fol_() : EXEC_FAIL : cp -r ${arb_}/_.ram/. ${arb_}/${ram_}.ram"
                    return 3
                fi
                echo -e "${CYAN}--- in in fol_() : CREATE ${ram_}.ram : for (arb_='${arb_}') create ram_ file://${ram_to_create} ---${NORMAL}" #sistem info mesage

                echo -e "${HLIGHT}--- ls -A ${ram_to_create} ---${NORMAL}" #start files

                ls -A ${ram_to_create}

            else
                plt_info "in fol_() : DIR : already exist '${ram_}' file://${ram_to_create} return 3"
                return 3
            fi

            echo -e "${CYAN}--- in fol_() : CREATE : file://${ram_to_create} ---${NORMAL}" #sistem info mesage

            if ! hook_after_crram_02_hooks_proc_fol__03_util_fn_phylum_a_sil; then
                plt_exit "in ${FNN} : FAILEXEC : hook_after_crram_02_hooks_proc_fol__03_util_fn_phylum_a_sil return 3"
                return 3
            fi

            . ${arb_}/paratus_arb.sh

            return 2
        fi

    fi

}
