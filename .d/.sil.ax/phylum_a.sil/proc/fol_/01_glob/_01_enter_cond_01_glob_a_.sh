#!/bin/bash
#? return 2 => return 0, return 3 => return 1
#{pre}

01_enter_cond_01_glob_a_() {

    echo -e "${CYAN}--- 01_enter_cond_01_glob_a_() file://{path_file} ---${NORMAL}"       #sistem info mesage
    echo -e "${CYAN}--- MAIN: check main condition and pre start util files ---${NORMAL}" #sistem info mesage
    #{body}
    if ! [ -d "${sil_}" ]; then
        plt_exit "in ${FNN} : NOT_DIR : sil_='${sil_}' reurn 3" 
        return 3
    fi

    echo -e "${HLIGHT}--- . ${sil_}/paratus_sil.sh ---${NORMAL}" #start files

    . ${sil_}/paratus_sil.sh

}
