#!/usr/bin/env bash
filename=${PLT_PATH}/.d/.arb/bsh.arb/find_ext__.ram/.grot/find_ext__tst/_flow_tst.sh
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

find_ext__ ${PLT_PATH}/.d/.arb/bsh.arb/find_ext__.ram/.grot/find_ext__tst/_dir_tstx tstx >res

cat res

# cr_tst_dir_ <dat &>>res

#{body_sh}
#?-------------------------------------
#?----------------------------------------------------
cd "$idir"
unset filename
unset PW
unset idir
#{ish}
