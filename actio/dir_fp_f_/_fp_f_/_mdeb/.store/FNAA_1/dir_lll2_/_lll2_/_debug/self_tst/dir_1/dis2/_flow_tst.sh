#!/usr/bin/env bash
filename=${PLT_PATH}/actio/dir_fp_f_/_fp_f_/_mdeb/.store/FNAA_1/dir_lll2_/_lll2_/_debug/self_tst/dir_1/dis2/_flow_tst.sh
# echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file
PW=$(pwd)
idir="$(dirname ${filename})"
cd "${idir}" || {
    echo "${idir} not dir" >&2
    return 1
}
#?----------------------------------------------------
#?-------------------------------------

>res

cr_tst_dir_ <dat &>>res

#{body_sh}
#?-------------------------------------
#?----------------------------------------------------
cd "$idir"
unset filename
unset PW
unset idir
#{ish}
