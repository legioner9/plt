#!/bin/bash
#? return 2 => return 0, return 3 => return 1
#{pre}

01_obc_sub_proc_fol__02_pars_phylum_a_sil() {

echo -e "${BLUE}--- 01_obc_sub_proc_fol__02_pars_phylum_a_sil() file://${PLT_PATH}/.d/.sil.ax/phylum_a.sil/proc/fol_/02_pars/01_obc_sub_proc_fol__02_pars_phylum_a_sil.sh ---${NORMAL}" #sistem info mesage
echo -e "${CYAN}--- MAIN: pars arg -_(f_|r_|a_){sub_}_{obc_} to sub_={sub_} , obc_={obc_} ---${NORMAL}" #sistem info mesage
#{body}

    for item1 in $("${_f2e}" ${sil_}/vis/ll.lst); do
        for item2 in $("${_f2e}" ${sil_}/arb/ll.lst); do
            eval value1=\$\{${item1}_${item2}_\}
            #? check exist param=1
            if [ ${value1:-0} -eq 1 ]; then
                sub=${item1}
                obc=${item2}
                echo -e "${GREEN}\$sub = $sub${NORMAL}" #print variable
                echo -e "${GREEN}\$obc = $obc${NORMAL}" #print variable
            fi
        done
    done
    echo -e "${HLIGHT}--- . ${sil_}/paratus_sil.sh ---${NORMAL}" #start files
    
    . ${sil_}/paratus_sil.sh

}