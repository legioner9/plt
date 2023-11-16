#!/bin/bash
#? return 2 => return 0, return 3 => return 1
#{pre}

02_E_proc_fol__01_glob_phylum_a_sil() {

echo -e "${BLUE}--- 02_E_proc_fol__01_glob_phylum_a_sil() file://${PLT_PATH}/.d/.sil.ax/phylum_a.sil/proc/fol_/01_glob/02_E_proc_fol__01_glob_phylum_a_sil.sh ---${NORMAL}" #sistem info mesage
echo -e "${CYAN}--- MAIN: check main condition and pre start util files ---${NORMAL}" #sistem info mesage
#{body}

    if [ "${E_:-0}" -eq 1 ]; then
        echo "do E_"
        return 2
    fi

}