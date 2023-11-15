#!/bin/bash
#? return 2 => return 0, return 3 => return 1
#{pre}

02_E_01_glob_a_() {

    echo -e "${CYAN}--- 02_E_01_glob_a_() file://{path_file} ---${NORMAL}"           #sistem info mesage
    echo -e "${CYAN}--- MAIN: echo main catalog (path, fn, main, tags) ---${NORMAL}" #sistem info mesage
    #{body}

    if [ "${E_:-0}" -eq 1 ]; then
        echo "do E_"
        return 2
    fi

}
