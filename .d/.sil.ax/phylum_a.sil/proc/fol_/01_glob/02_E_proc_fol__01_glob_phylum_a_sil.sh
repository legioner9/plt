#!/bin/bash
#? return 2 => return 0, return 3 => return 1
#{pre}

02_E_proc_fol__01_glob_phylum_a_sil() {

    echo -e "${BLUE}--- 02_E_proc_fol__01_glob_phylum_a_sil() file://${PLT_PATH}/.d/.sil.ax/phylum_a.sil/proc/fol_/01_glob/02_E_proc_fol__01_glob_phylum_a_sil.sh ---${NORMAL}" #sistem info mesage
    echo -e "${CYAN}--- MAIN: E catalog ---${NORMAL}"                                                                                                                           #sistem info mesage
    #{body}

    if [ "${E_:-0}" -eq 1 ] && [ -d "${arb_}" ]; then

        . "${arb_}"/paratus_arb.sh

        echo -e "${HLIGHT}--- ${_f2e} ${arb_}/all_ramus_name.lst ---${NORMAL}" #start files

        for item9 in $("${_f2e}" "${arb_}"/all_ramus_name.lst); do

            ram_dir="${arb_}"/"${item9}".ram
            ram_name="${item9}"

            if [ -f ${ram_dir}/main.fol ]; then
                main_str="$("${_f2oe}" "${ram_dir}"/main.fol)"
            else
                plt_pause "NOT_FILE '${ram_dir}/main.fol'"
            fi

            if [ -f ${ram_dir}/tags.fol ]; then
                tags_str="$("${_f2str_}" "${ram_dir}"/tags.fol)"
            else
                plt_pause "NOT_FILE '${ram_dir}/tags.fol'"
            fi

            echo -e "
${BLUE}PATH: file://${ram_dir}${NORMAL}
${GREEN}NAME: ${ram_name}${NORMAL} 
${RED}MAIN: ${main_str}${NORMAL}
${CYAN}TAGS: ${tags_str}${NORMAL}"
        done
        return 2
    fi

}
