#!/usr/bin/env bash
filename=${PLT_PATH}/.d/.arb/bsh.arb/isn_lcru__.ram/.grot/isn_lcru__tst/_flow_tst.sh
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

ret2e isn_lcru__ "fewre" >>res
ret2e isn_lcru__ "fewre мва" >>res



# cr_tst_dir_ <dat &>>res

#{body_sh}
#?-------------------------------------
#?----------------------------------------------------
cd "$idir"
unset filename
unset PW
unset idir
#{ish}
