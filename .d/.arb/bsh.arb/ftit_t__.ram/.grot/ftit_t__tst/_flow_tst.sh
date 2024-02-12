#!/usr/bin/env bash
filename=${PLT_PATH}/.d/.arb/bsh.arb/ftit_t__.ram/.grot/ftit_t__tst/_flow_tst.sh
# echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file
PW=$(pwd)
idir_5344532="$(dirname ${filename})"
cd "${idir_5344532}" || {
    echo "${idir_5344532} not dir" >&2
    return 1
}
#?----------------------------------------------------
#?-------------------------------------

: >${idir_5344532}/res 

echo | ftit_t__ &>>${idir_5344532}/res 

touch -mat 199807081215.25 ${idir_5344532}/dat

ftit_t__ ${idir_5344532}/dat &>>${idir_5344532}/res

touch ${idir_5344532}/dat

ftit_t__ ${idir_5344532}/dat

# cr_tst_dir_ <dat &>>res

#{body_sh}
#?-------------------------------------
#?----------------------------------------------------
cd "$idir_5344532"
unset filename
unset PW
unset idir_5344532
#{ish}
