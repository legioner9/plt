#!/bin/bash
#? return 2 => return 0, return 3 => return 1
#{pre}

01_enter_cond_proc_fol__01_glob_phylum_a_sil() {

    echo -e "${BLUE}--- 01_enter_cond_proc_fol__01_glob_phylum_a_sil() file://${PLT_PATH}/.d/.sil.ax/phylum_a.sil/proc/fol_/01_glob/01_enter_cond_proc_fol__01_glob_phylum_a_sil.sh ---${NORMAL}" #sistem info mesage
    echo -e "${CYAN}--- MAIN: check main condition and pre start util files ---${NORMAL}"                                                                                                         #sistem info mesage
    #{body}
    if ! [ -d "${sil_}" ]; then
        plt_exit "in ${FNN} : NOT_DIR : sil_='${sil_}' reurn 3"
        return 3
    fi

    echo -e "${HLIGHT}--- . ${sil_}/paratus_sil.sh ---${NORMAL}" #start files

    . ${sil_}/paratus_sil.sh

}
