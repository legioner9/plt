#!/bin/bash
#? return 2 => return 0, return 3 => return 1
#{pre}

addtag__d__infn_mm_arb__plt() {

echo -e "${CYAN}--- addtag__d__infn_mm_arb__plt() file://${PLT_PATH}/.d/.infn/mm_arb_/addtag__d__infn_mm_arb__plt.sh ---${NORMAL}" #sistem info mesage
echo -e "${CYAN}--- MAIN: addtag to file://$1 ---${NORMAL}" #sistem info mesage
#{body}
    local dir_sil=${SIL_A}
    fol_ \
        --_sil "${dir_sil}" \
        --_arb "$1" \
        -_addtag


} 