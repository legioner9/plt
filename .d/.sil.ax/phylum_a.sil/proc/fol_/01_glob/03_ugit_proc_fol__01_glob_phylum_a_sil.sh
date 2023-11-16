#!/bin/bash
#? return 2 => return 0, return 3 => return 1
#{pre}

03_ugit_proc_fol__01_glob_phylum_a_sil() {

    echo -e "${CYAN}--- 03_ugit_proc_fol__01_glob_phylum_a_sil() file://${PLT_PATH}/.d/.sil.ax/phylum_a.sil/proc/fol_/01_glob/03_ugit_proc_fol__01_glob_phylum_a_sil.sh ---${NORMAL}" #sistem info mesage
    echo -e "${CYAN}--- MAIN: echo -_ugit all unique tags ---${NORMAL}"                                                                                                               #sistem info mesage
    #{body}

    if [ -f "${arb_}"/all_unique_tags.lst ] && [ "${utag_:-0}" -eq 1 ]; then
        "${_f2e}" "${arb_}"/all_unique_tags.lst
        return 0
    fi

}
