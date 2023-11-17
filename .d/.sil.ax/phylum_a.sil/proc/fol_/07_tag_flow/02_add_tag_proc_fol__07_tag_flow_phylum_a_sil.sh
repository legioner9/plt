#!/bin/bash
#? return 2 => return 0, return 3 => return 1
#{pre}

02_add_tag_proc_fol__07_tag_flow_phylum_a_sil() {

    echo -e "${CYAN}--- 02_add_tag_proc_fol__07_tag_flow_phylum_a_sil() file://${PLT_PATH}/.d/.sil.ax/phylum_a.sil/proc/fol_/07_tag_flow/02_add_tag_proc_fol__07_tag_flow_phylum_a_sil.sh ---${NORMAL}" #sistem info mesage
    echo -e "${CYAN}--- MAIN: add tag ---${NORMAL}"                                                                                                                                                     #sistem info mesage
    #{body}

    if [ "${addtag_:-0}" -eq 1 ]; then

        fol_mm_ "choice ramus for addtag_ from file://${arb_}"

        fol_addtag_() {

            echo -e "${BLUE}--- exec addtag ${FNN} (num_menu) ---${NORMAL}" #started functions

            arr_2=($("${_f2e}" "${arb_}"/all_unique_tags.lst))

            fol_show_arb_tags_
            fol_show_ram_tags_

            PS3="eligendi actiones tag (ram_='${ram_}') to insert to file://${ram_tag_file}: "

            select item5 in "${arr_2[@]}"; do
                tag_to_add=${item5}
                break
            done

            plt_pause "in fol_() : DO?: for (ram_='${ram_}') add tag ${tag_to_add} in file://${ram_tag_file}"

            if ! grep -w ${tag_to_add} ${ram_tag_file} &>/dev/null; then
                # echo -e "\n${tag_to_add}" >>${ram_tag_file}

                if ! "${_ins_last_s}" ${ram_tag_file} ${tag_to_add}; then
                    plt_info "in in fol_() : EXEC_FAIL : ${_ins_last_s} ${ram_tag_file} ${tag_to_add}"
                fi

                #sistem info mesage
                echo -e "${CYAN}--- in in fol_() : ADD ram_ '${ram_tag_file}' : for (ram_='${ram_}') add tag ${ram_tag_file} to file://${ram_tag_file} ---${NORMAL}" #sistem info mesage

                . ${arb_}/paratus_arb.sh

                "${_sort_tags_s}" ${ram_tag_file}
                fol_show_ram_tags_
            else
                plt_info "${tag_to_add} already in file://${ram_tag_file}"
            fi
        }

        while true; do
            if ! plt_ques_exec fol_addtag_; then
                break
            fi
        done

        return 2

    fi

}
