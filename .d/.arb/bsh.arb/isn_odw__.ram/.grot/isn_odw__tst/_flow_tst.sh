#!/usr/bin/env bash
filename=${PLT_PATH}/.d/.arb/bsh.arb/isn_odw__.ram/.grot/isn_odw__tst/_flow_tst.sh
# echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file
PW=$(pwd)
idir_3452tc="$(dirname ${filename})"
cd "${idir_3452tc}" || {
    echo "${idir_3452tc} not dir" >&2
    return 1
}
#?----------------------------------------------------
#?-------------------------------------

: >"${idir_3452tc}"/res

ret2e isn_odw__ "casd32" >>"${idir_3452tc}"/res

ret2e isn_odw__ "casd" >>"${idir_3452tc}"/res

ret2e isn_odw__ "32" >>"${idir_3452tc}"/res

ret2e isn_odw__ "32 sdf" >>"${idir_3452tc}"/res
ret2e isn_odw__ "32_sdf" >>"${idir_3452tc}"/res
ret2e isn_odw__ "32%sdf" >>"${idir_3452tc}"/res
ret2e isn_odw__ >>"${idir_3452tc}"/res

# cr_tst_dir_ <dat &>>res

#{body_sh}
#?-------------------------------------
#?----------------------------------------------------
cd "$idir"
unset filename
unset PW
unset idir
#{ish}
