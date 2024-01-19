#!/usr/bin/env bash
filename=${PLT_PATH}/actio/mall/dir_act2tst_/act2tst_tst/_flow_tst.sh
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

echo | act2tst_ ${PLT_PATH}/actio/mall/dir_act2tst_/act2tst_tst/tst_in_tst.lst tst &>>res
# act2tst_ ${PLT_PATH}/actio/mall/dir_act2tst_/act2tst_tst/tst_in_tst.lst tst 

# cr_tst_dir_ <dat &>>res

#{body_sh}
#?-------------------------------------
#?----------------------------------------------------
cd "$idir"
unset filename
unset PW
unset idir
#{ish}
