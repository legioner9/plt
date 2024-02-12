#!/usr/bin/env bash
filename=${PLT_PATH}/.d/.arb/bsh.arb/isn_from__.ram/.grot/isn_from__tst/_flow_tst.sh
# echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file
PW=$(pwd)
idir_dwefq="$(dirname ${filename})"
cd "${idir_dwefq}" || {
    echo "${idir_dwefq} not dir" >&2
    return 1
}
#?----------------------------------------------------
#?-------------------------------------

: >${idir_dwefq}/res
ret2e isn_from__ 1 1 >>${idir_dwefq}/res
ret2e isn_from__ 1 1 x >>${idir_dwefq}/res
ret2e isn_from__ 1 1 1 >>${idir_dwefq}/res
ret2e isn_from__ 1 2 1 >>${idir_dwefq}/res
ret2e isn_from__ 2 1 1 >>${idir_dwefq}/res
ret2e isn_from__ 2 1 3 >>${idir_dwefq}/res

# cr_tst_dir_ <dat &>>res

#{body_sh}
#?-------------------------------------
#?----------------------------------------------------
cd "$idir"
unset filename
unset PW
unset idir
#{ish}
