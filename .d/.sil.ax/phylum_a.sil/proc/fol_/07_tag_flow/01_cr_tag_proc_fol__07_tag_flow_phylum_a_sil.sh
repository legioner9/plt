#!/bin/bash
#? return 2 => return 0, return 3 => return 1
#{pre}

01_cr_tag_proc_fol__07_tag_flow_phylum_a_sil() {

echo -e "${CYAN}--- 01_cr_tag_proc_fol__07_tag_flow_phylum_a_sil() file://${PLT_PATH}/.d/.sil.ax/phylum_a.sil/proc/fol_/07_tag_flow/01_cr_tag_proc_fol__07_tag_flow_phylum_a_sil.sh ---${NORMAL}" #sistem info mesage
echo -e "${CYAN}--- MAIN: cr tag ---${NORMAL}" #sistem info mesage
#{body}

if [ "${crtag_:-0}" -eq 1 ]; then

    if [ -z ${tag_} ]; then

        fol_mm_ "choice ramus for crtag_ from file://${arb_}"

        fol_crtag_() {

            fol_show_arb_tags_
            fol_show_ram_tags_

            plt_pause "in fol_() : DO?: for (ram_='${ram_}') create tag in file://${ram_tag_file}"

            read -p "Enter tag (^@, 11<#, only w d _) " tag_to_create

            echo -e "${GREEN}\$tag_to_create = $tag_to_create${NORMAL}" #print variable

            if grep -w ${tag_to_create} "${ram_tag_file}"; then
                plt_info "in fol_() : EXIST : tag '${tag_to_create}' already in file://${ram_tag_file}"
                return 3
            fi

            if [ -n "${tag_to_create}" ] && [ "${#tag_to_create}" -le 10 ] && "${_is_eng_var}" "${tag_to_create:1}" && [ "${tag_to_create:0:1}" == "@" ]; then

                if ! "${_ins_last_s}" "${arb_}"/"${ram_}".ram/tags.fol "${tag_to_create}"; then
                    plt_info "in in fol_() : EXEC_FAIL : ${_ins_last_s} ${ram_tag_file} ${tag_to_add}"
                fi

                echo -e "${CYAN}--- in in fol_() : CREATE ${tag_to_create} : for (ram_='${ram_}') create tag ${tag_to_create} in file://${ram_tag_file} ---${NORMAL}" #sistem info mesage

                . ${arb_}/paratus_arb.sh

                "${_sort_tags_s}" ${ram_tag_file}
                fol_show_ram_tags_

            else
                plt_info "in fol_() : NOT_IN_CONDITION : '${tag_to_create}'"
            fi

        }

        while true; do
            if ! plt_ques_exec fol_crtag_; then
                break
            fi
        done

        echo -e "${CYAN}--- in in fol_() : CREATE tag '${tag_to_create}' : for (ram_='${ram_}') delete tag ${tag_to_create} in file://${ram_tag_file} ---${NORMAL}" #sistem info mesage

        . ${arb_}/paratus_arb.sh

        sort_tags_s ${ram_tag_file}
        fol_show_ram_tags_

        return 2

    else

        tag_to_create="${tag_}"
        ram_tag_file="${arb_}"/"${ram_}".ram/tags.fol

        echo -e "${GREEN}\$tag_to_create = $tag_to_create${NORMAL}" #print variable

        if grep -w ${tag_to_create} "${ram_tag_file}"; then
            plt_info "in fol_() : EXIST : tag '${tag_to_create}' already in file://${ram_tag_file}"
            return 3
        fi
 
        plt_pause "in fol_() : DO?: for (ram_='${ram_}') create tag '${tag_to_create}' in file://${ram_tag_file}"

        if [ -n "${tag_to_create}" ] && [ "${#tag_to_create}" -le 10 ] && "${_is_eng_var}" "${tag_to_create:1}" && [ "${tag_to_create:0:1}" == "@" ]; then

            if ! "${_ins_last_s}" "${ram_tag_file}" "${tag_to_create}"; then
                plt_info "in in fol_() : EXEC_FAIL : ${_ins_last_s} ${ram_tag_file} ${tag_to_add}"
                return 3
            fi

            echo -e "${CYAN}--- in in fol_() : CREATE ${tag_to_create} : for (ram_='${ram_}') create tag ${tag_to_create} in file://${ram_tag_file} ---${NORMAL}" #sistem info mesage

            . ${arb_}/paratus_arb.sh

            "${_sort_tags_s}" ${ram_tag_file}
            fol_show_ram_tags_
            return 2
        else
            plt_info "in fol_() : NOT_IN_CONDITION : '${tag_to_create}'"
            return 3
        fi
    fi
fi

} 