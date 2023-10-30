#!/usr/bin/env bash
filename=${PLT_PATH}/actio/mall/dir_f2str_/f2str_tst/_flow_tst.sh
# echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file
PW=$(pwd)
idir="$(dirname ${filename})"
cd "${idir}" || {
    echo "${idir} not dir" >&2
    return 1
}
#?----------------------------------------------------
#?-------------------------------------

# : >res
# cd ${PLT_PATH}/actio/mall/dir_f2str_/f2str_tst
f2str_c_ dat >res

# cr_tst_dir_ <dat &>>res

#{body_sh}
#?-------------------------------------
#?----------------------------------------------------
cd "$idir"
unset filename
unset PW
unset idir
#{ish}
