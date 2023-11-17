#!/bin/bash
#? return 2 => return 0, return 3 => return 1
#{pre}

03_del_tag_proc_fol__07_tag_flow_phylum_a_sil() {

echo -e "${CYAN}--- 03_del_tag_proc_fol__07_tag_flow_phylum_a_sil() file://${PLT_PATH}/.d/.sil.ax/phylum_a.sil/proc/fol_/07_tag_flow/03_del_tag_proc_fol__07_tag_flow_phylum_a_sil.sh ---${NORMAL}" #sistem info mesage
echo -e "${CYAN}--- MAIN: ---${NORMAL}" #sistem info mesage
#{body}

if [ "${deltag_:-0}" -eq 1 ]; then

    if [ -z "${ram_}" ]; then

        fol_mm_ "choice ramus for deltag_ from file://${arb_}"

        fol_deltag_() {

            # plt_pause "in fol_() : DO?: for (ram_='${ram_}') delete tag in file://${ram_tag_file}"

            arr_3=($("${_f2e}" "${ram_tag_file}"))

            PS3="eligendi actiones tag (ram_='${ram_}') to delete from file://${ram_tag_file}: "
            select item6 in "${arr_3[@]}"; do
                tag_to_delete=${item6}
                break
            done

            echo -e "${GREEN}\$tag_to_delete = $tag_to_delete${NORMAL}" #print variable

            if ! grep -w ${tag_to_delete} "${ram_tag_file}"; then
                plt_info "in fol_() : NOT_EXIST : tag '${tag_to_create}' in file://${ram_tag_file}"
            fi

            plt_pause "in fol_() : DO?: for (ram_='${ram_}') delete tag ${tag_to_delete} in file://${ram_tag_file}"

            echo -e "${HLIGHT}--- sed 's/'${tag_to_delete}'//' ${ram_tag_file} ---${NORMAL}" #start files

            if ! sed -i '/'"${tag_to_delete}"'/g' ${ram_tag_file}; then
                plt_info "in in fol_() : EXEC_FAIL : ${_ins_last_s} ${ram_tag_file} ${tag_to_add}"
            fi

            echo -e "${CYAN}--- in in fol_() : DELELE tag '${tag_to_delete}' : for (ram_='${ram_}') delete tag ${tag_to_delete} in file://${ram_tag_file} ---${NORMAL}" #sistem info mesage

            . ${arb_}/paratus_arb.sh

            sort_tags_s ${ram_tag_file}
            fol_show_ram_tags_

        }

        while true; do
            if ! plt_ques_exec fol_deltag_; then
                break
            fi
        done

    else

        tag_to_delete=${tag_}
        ram_tag_file=${arb_}/${ram_}.ram/tags.fol

        if ! grep -w ${tag_to_delete} "${ram_tag_file}"; then
            plt_info "in fol_() : NOT_EXIST : tag '${tag_to_create}' in file://${ram_tag_file}"
            return 3
        fi

        echo -e "${GREEN}\$tag_to_delete = $tag_to_delete${NORMAL}" #print variable

        plt_pause "in fol_() : DO?: for (ram_='${ram_}') delete tag ${tag_to_delete} in file://${ram_tag_file}"

        echo -e "${HLIGHT}--- sed 's/'${tag_to_delete}'//' ${ram_tag_file} ---${NORMAL}" #start files

        if ! sed -i '/'"${tag_to_delete}"'/g' ${ram_tag_file}; then
            plt_info "in in fol_() : EXEC_FAIL : ${_ins_last_s} ${ram_tag_file} ${tag_to_add} return 1"
            return 3
        fi

        echo -e "${CYAN}--- in in fol_() : DELELE tag '${tag_to_delete}' : for (ram_='${ram_}') delete tag ${tag_to_delete} in file://${ram_tag_file} ---${NORMAL}" #sistem info mesage

        . ${arb_}/paratus_arb.sh

        sort_tags_s ${ram_tag_file}
        fol_show_ram_tags_

        return 2
    fi
fi

} 