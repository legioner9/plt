#!/bin/bash
#? return 2 => return 0, return 3 => return 1
#{pre}

01_init_def_proc_fol__05_do_sub_obc_phylum_a_sil() {

echo -e "${BLUE}--- 01_init_def_proc_fol__05_do_sub_obc_phylum_a_sil() file://${PLT_PATH}/.d/.sil.ax/phylum_a.sil/proc/fol_/05_do_sub_obc/01_init_def_proc_fol__05_do_sub_obc_phylum_a_sil.sh ---${NORMAL}" #sistem info mesage
echo -e "${CYAN}--- MAIN: start paratus sil & arb, def arb_rams ---${NORMAL}" #sistem info mesage
#{body}

    . ${sil_}/paratus_sil.sh
    . ${arb_}/paratus_arb.sh

    arb_rams=${arb_}/all_ramus_name.lst

} 