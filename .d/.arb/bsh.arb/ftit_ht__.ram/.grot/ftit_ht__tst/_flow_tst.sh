#!/usr/bin/env bash
filename=${PLT_PATH}/.d/.arb/bsh.arb/ftit_ht__.ram/.grot/ftit_ht__tst/_flow_tst.sh
# echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file
PW=$(pwd)
idir_534453="$(dirname ${filename})"
cd "${idir_534453}" || {
    echo "${idir_534453} not dir" >&2
    return 1
}
#?----------------------------------------------------
#?-------------------------------------

: >${idir_534453}/res 

echo | ftit_t__ &>>${idir_534453}/res 

touch -mat 199807081215.25 ${idir_534453}/dat

ftit_ht__ ${idir_534453}/dat &>>${idir_534453}/res

touch ${idir_534453}/dat

ftit_ht__ ${idir_534453}/dat

# cr_tst_dir_ <dat &>>res

#{body_sh}
#?-------------------------------------
#?----------------------------------------------------
cd "$idir"
unset filename
unset PW
unset idir
#{ish}
