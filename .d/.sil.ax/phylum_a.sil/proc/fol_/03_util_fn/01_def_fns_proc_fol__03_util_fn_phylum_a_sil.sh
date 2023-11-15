#!/bin/bash
#? return 2 => return 0, return 3 => return 1
#{pre}

01_def_fns_proc_fol__03_util_fn_phylum_a_sil() {

    echo -e "${CYAN}--- 01_def_fns_proc_fol__03_util_fn_phylum_a_sil() file://${PLT_PATH}/.d/.sil.ax/phylum_a.sil/proc/fol_/03_util_fn/01_def_fns_proc_fol__03_util_fn_phylum_a_sil.sh ---${NORMAL}" #sistem info mesage
    echo -e "${CYAN}--- MAIN: defime fol_mm_() , fol_show_arb_tags_() , fol_show_ram_tags_() , fol_show_arb_rams_() ---${NORMAL}"                                                                                        #sistem info mesage
    #{body}

    fol_mm_() { #? choice ram_ if ram_ NOT_DEFINE

        local fol_mm_arg_1="$1"

        if [ -z "${ram_}" ]; then

            arr_ram=()

            for item3 in $("${_dd2e}" "${arb_}"); do
                arr_ram+=("$(${_prs_f} -n "${item3}")")
            done

            plt_info "${fol_mm_arg_1}"
            PS3="eligendi actiones ramus name: "
            select item4 in "${arr_ram[@]}"; do
                ram_=${item4}
                break
            done
            echo -e "${GREEN}\$ram_ = $ram_${NORMAL}" #print variable

        fi

        if ! [ -d "${arb_}/${ram_}.ram" ]; then
            plt_exit "in ${FNN} : NOT_DIR : file://'${arb_}/${ram_}.ram' return 1"
            return 1
        fi

        ram_tag_file=${arb_}/${ram_}.ram/tags.fol
    }

    fol_show_arb_tags_() {

        echo -e "${CYAN}--- START all unique tags in file://${arb_} ---${NORMAL}" #sistem info mesage
        "${_f2e}" ${arb_}/all_unique_tags.lst
        echo -e "${CYAN}--- END all unique tags in file://${arb_} ---${NORMAL}" #sistem info mesage

    }

    fol_show_ram_tags_() {

        echo -e "${CYAN}--- START exist tags in file://${ram_tag_file} ---${NORMAL}" #sistem info mesage
        "${_f2e}" ${ram_tag_file}
        echo -e "${CYAN}--- END exist tags in file://${ram_tag_file} ---${NORMAL}" #sistem info mesage

    }

    fol_show_arb_rams_() {
        echo -e "${CYAN}--- START all ramus in ${arb_} ---${NORMAL}" #sistem info mesage
        "${_f2e}" ${arb_rams}
        echo -e "${CYAN}--- END all ramus in ${arb_} ---${NORMAL}" #sistem info mesage
    }

}
