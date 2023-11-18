#!/bin/bash
#? return 2 => return 0, return 3 => return 1
#{pre}

editarb__d__infn_mm_arb__plt() {

    echo -e "${CYAN}--- editarb__d__infn_mm_arb__plt() file://${PLT_PATH}/.d/.infn/mm_arb_/editarb__d__infn_mm_arb__plt.sh ---${NORMAL}" #sistem info mesage
    echo -e "${CYAN}--- MAIN: edit_ file://$1 ---${NORMAL}"                                                                                              #sistem info mesage
    #{body}

    ${_edit_} "$1"

}
