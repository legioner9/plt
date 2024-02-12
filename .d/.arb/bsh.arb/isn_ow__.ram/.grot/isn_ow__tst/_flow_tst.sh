#!/usr/bin/env bash
filename=${PLT_PATH}/.d/.arb/bsh.arb/isn_ow__.ram/.grot/isn_ow__tst/_flow_tst.sh
# echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file
PW=$(pwd)
idir_3452="$(dirname ${filename})"
cd "${idir_3452}" || {
    echo "${idir_3452} not dir" >&2
    return 1
}
#?----------------------------------------------------
#?-------------------------------------

: >"${idir_3452}"/res

ret2e isn_ow__ "casd32" >>"${idir_3452}"/res

ret2e isn_ow__ "casd" >>"${idir_3452}"/res
ret2e isn_ow__ "ca sd" >>"${idir_3452}"/res

ret2e isn_ow__ "32" >>"${idir_3452}"/res

# cr_tst_dir_ <dat &>>res

#{body_sh}
#?-------------------------------------
#?----------------------------------------------------
cd "$idir_3452"
unset filename
unset PW
unset idir
#{ish}
