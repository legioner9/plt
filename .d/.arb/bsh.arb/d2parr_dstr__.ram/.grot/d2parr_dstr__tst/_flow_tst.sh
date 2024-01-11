#!/usr/bin/env bash
filename=${PLT_PATH}/.d/.arb/bsh.arb/d2parr_dstr__.ram/.grot/d2parr_dstr__tst/_flow_tst.sh
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

ptr_arr=()

d2parr_dstr__ ptr_arr dir_tst

parr3e_ ptr_arr >>res

# cr_tst_dir_ <dat &>>res

#{body_sh}
#?-------------------------------------
#?----------------------------------------------------
cd "$idir"
unset filename
unset PW
unset idir
#{ish}
