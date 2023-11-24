#!/bin/bash
#? return 2 => return 0, return 3 => return 1
#{pre}

02_hooks_proc_fol__03_util_fn_phylum_a_sil() {

    echo -e "${CYAN}--- 02_hooks_proc_fol__03_util_fn_phylum_a_sil() file://${PLT_PATH}/.d/.sil.ax/phylum_a.sil/proc/fol_/03_util_fn/02_hooks_proc_fol__03_util_fn_phylum_a_sil.sh ---${NORMAL}" #sistem info mesage
    echo -e "${CYAN}--- MAIN: ---${NORMAL}"                                                                                                                                                      #sistem info mesage
    #{body}

    hook_after_crram_02_hooks_proc_fol__03_util_fn_phylum_a_sil() {

        if ! [ -d "${arb_}"/_proc ]; then
            mkdir "${arb_}"/_proc
        fi

        if ! [ -f "${arb_}/_proc/hook_after_crram.sh.nl" ]; then
            echo "#!/bin/bash" >${arb_}/_proc/hook_after_crram.sh
            echo "# use: ${arb_} ${sil_} ${ram_name_to_create}" >>${arb_}/_proc/hook_after_crram.sh.nl
        fi

        echo -e "${HLIGHT}--- . ${arb_}/_proc/hook_after_crram.sh.nl ---${NORMAL}" #start files

        if ! . ${arb_}/_proc/hook_after_crram.sh.nl; then
            plt_exit "in 02_hooks_proc_fol__03_util_fn_phylum_a_sil() : EXEC_FAIL : . ${arb_}/_proc/hook_after_crram.sh.nl : retrurn 1"
            return 1
        fi

    }

    hook_before_crram_02_hooks_proc_fol__03_util_fn_phylum_a_sil() {

        if ! [ -d "${arb_}"/_proc ]; then
            mkdir "${arb_}"/_proc
        fi

        if ! [ -f "${arb_}/_proc/hook_before_crram.sh.nl" ]; then
            echo "#!/bin/bash" >${arb_}/_proc/hook_before_crram.sh
            echo "# use: ${arb_} ${sil_} ${ram_name_to_create}" >>${arb_}/_proc/hook_before_crram.sh.nl
        fi

        echo -e "${HLIGHT}--- . ${arb_}/_proc/hook_before_crram.sh.nl ---${NORMAL}" #start files

        if ! . ${arb_}/_proc/hook_before_crram.sh.nl; then
            plt_exit "in 02_hooks_proc_fol__03_util_fn_phylum_a_sil() : EXEC_FAIL : . ${arb_}/_proc/hook_after_crram.sh.nl : retrurn 1"
            return 1
        fi

    }

}
