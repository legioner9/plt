#!/usr/bin/env bash
filename=${PLT_PATH}/.d/.arb/bsh.arb/phs__.ram/.grot/phs__tst/_flow_tst.sh
# echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file
PW=$(pwd)
idir_brt454="$(dirname ${filename})"
cd "${idir_brt454}" || {
    echo "${idir_brt454} not dir" >&2
    return 1
}
#?----------------------------------------------------
#?-------------------------------------

: >"${idir_brt454}"/res

phs__ 3 code_dir

cd code_dir || plt_exit

phs__ 4 tst.php

# cr_tst_dir_ <dat &>>res

#{body_sh}
#?-------------------------------------
#?----------------------------------------------------
cd "$idir"
unset filename
unset PW
unset idir
#{ish}
