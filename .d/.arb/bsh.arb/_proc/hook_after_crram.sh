#!/bin/bash
# use ${arb_} ${sil_} ${ram_name_to_create}

cd ${arb_}/${ram_name_to_create}.ram/.grot || {
    plt_exit "EXEC_FAIL: cd ${arb_}/${ram_name_to_create}.ram/.grot return 1"
return 1
}

${_cr_shfn_} ${ram_name_to_create}.sh 




