#!/usr/bin/env bash
filename=${PLT_PATH}/.d/.arb/bsh.arb/parr2f__.ram/.grot/parr2f__tst/_flow_tst.sh
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

parr_arr=(1 "csadf csda" 43 "jyturte55 sdcf")

parr2f__ parr_arr res

# cr_tst_dir_ <dat &>>res

#{body_sh}
#?-------------------------------------
#?----------------------------------------------------
cd "$idir"
unset filename
unset PW
unset idir
#{ish}
