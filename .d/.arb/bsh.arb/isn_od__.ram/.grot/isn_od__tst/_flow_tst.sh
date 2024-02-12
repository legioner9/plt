#!/usr/bin/env bash
filename=${PLT_PATH}/.d/.arb/bsh.arb/isn_od__.ram/.grot/isn_od__tst/_flow_tst.sh
# echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file
PW=$(pwd)
idir_3452t="$(dirname ${filename})"
cd "${idir_3452t}" || {
    echo "${idir_3452t} not dir" >&2
    return 1
}
#?----------------------------------------------------
#?-------------------------------------

: >"${idir_3452t}"/res

ret2e isn_od__ "casd32" >>"${idir_3452t}"/res

ret2e isn_od__ "casd" >>"${idir_3452t}"/res

ret2e isn_od__ "32" >>"${idir_3452t}"/res

ret2e isn_od__ "3 2" >>"${idir_3452t}"/res

ret2e isn_od__ >>"${idir_3452t}"/res


# cr_tst_dir_ <dat &>>res

#{body_sh}
#?-------------------------------------
#?----------------------------------------------------
cd "$idir"
unset filename
unset PW
unset idir
#{ish}
