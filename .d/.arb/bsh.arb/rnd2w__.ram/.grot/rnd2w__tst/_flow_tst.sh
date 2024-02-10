#!/usr/bin/env bash
filename=${PLT_PATH}/.d/.arb/bsh.arb/rnd2w__.ram/.grot/rnd2w__tst/_flow_tst.sh
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

rnd2w__ 
rnd2w__ "dqwe"
rnd2w__ 5

# cr_tst_dir_ <dat &>>res

#{body_sh}
#?-------------------------------------
#?----------------------------------------------------
cd "$idir"
unset filename
unset PW
unset idir
#{ish}
