#!/bin/bash
#? return 2 => return 0, return 3 => return 1

01_enter_cond_01_glob() {

    echo -e "${CYAN}--- 01_enter_cond_01_glob() file:///home/st/REPOBARE/_repo/plt/.d/.sil.ax/phylum_a.sil/proc/fol_/01_glob/01_enter_cond_01_glob.sh ---${NORMAL}" #sistem info mesage

    if ! [ -d "${sil_}" ]; then
        plt_exit "in ${FNN} : NOT_DIR : sil_='${sil_}' reurn 3"
        return 3
    fi

}
