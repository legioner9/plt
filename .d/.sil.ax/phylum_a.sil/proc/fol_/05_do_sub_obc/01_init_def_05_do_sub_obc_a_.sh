#!/bin/bash
#? return 2 => return 0, return 3 => return 1
#{pre}

01_init_def_05_do_sub_obc_a_() {

    echo -e "${CYAN}--- 01_init_def_05_do_sub_obc_a_() file://{path_file} ---${NORMAL}" #sistem info mesage
    echo -e "${CYAN}--- MAIN: start paratus sil & arb, def arb_rams ---${NORMAL}"       #sistem info mesage
    #{body}

    . ${sil_}/paratus_sil.sh
    . ${arb_}/paratus_arb.sh

    arb_rams=${arb_}/all_ramus_name.lst

}
