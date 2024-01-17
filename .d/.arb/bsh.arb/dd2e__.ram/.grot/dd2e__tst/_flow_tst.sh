#!/usr/bin/env bash
filename=${PLT_PATH}/.d/.arb/bsh.arb/dd2e__.ram/.grot/dd2e__tst/_flow_tst.sh
# echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file
PW=$(pwd)
idir="$(dirname ${filename})"
cd "${idir}" || {
    echo "${idir} not dir" >&2
    return 1
}
#?----------------------------------------------------
#?-------------------------------------

: >res

dd2e__ ${PLT_PATH}/.d/.arb/bsh.arb/dd2e__.ram/.grot/dd2e__tst/_dir_tstx >>res
dd2e__ ${PLT_PATH}/.d/.arb/bsh.arb/dd2e__.ram/.grot/dd2e__tst/_dir_tst >>res

# cr_tst_dir_ <dat &>>res

#{body_sh}
#?-------------------------------------
#?----------------------------------------------------
cd "$idir"
unset filename
unset PW
unset idir
#{ish}
