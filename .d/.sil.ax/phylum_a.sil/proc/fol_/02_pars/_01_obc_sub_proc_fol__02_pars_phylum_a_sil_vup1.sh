#!/bin/bash
#? return 2 => return 0, return 3 => return 1
#{pre}

01_obc_sub_proc_fol__02_pars_phylum_a_sil() {

echo -e "${BLUE}--- 01_obc_sub_proc_fol__02_pars_phylum_a_sil() file://${PLT_PATH}/.d/.sil.ax/phylum_a.sil/proc/fol_/02_pars/01_obc_sub_proc_fol__02_pars_phylum_a_sil.sh ---${NORMAL}" #sistem info mesage
echo -e "${CYAN}--- MAIN: pars arg -_(f_|r_|a_){sub_}_{obc_} to sub_={sub_} , obc_={obc_} ---${NORMAL}" #sistem info mesage
#{body}

arr_01_obc_sub_proc_fol__02_pars_phylum_a_sil=()
arr_01_obc_sub_proc_fol__02_pars_phylum_a_sil+=($("${_f2e}" ${sil_}/vis/ll.lst))
arr_01_obc_sub_proc_fol__02_pars_phylum_a_sil+=($(prs_f -n $(${_d2e} ${arb_}/_proc/sub)))
parr3e_ arr_01_obc_sub_proc_fol__02_pars_phylum_a_sil

arr_all_01_obc_sub_proc_fol__02_pars_phylum_a_sil=()

    for item1 in ${arr_01_obc_sub_proc_fol__02_pars_phylum_a_sil[@]}; do

        echo -e "${GREEN}\$item1 = $item1${NORMAL}" #print variable

    done
    
    echo -e "${HLIGHT}--- . ${sil_}/paratus_sil.sh ---${NORMAL}" #start files
    
    . ${sil_}/paratus_sil.sh

}