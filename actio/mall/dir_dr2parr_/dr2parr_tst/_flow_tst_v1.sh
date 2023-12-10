#!/usr/bin/env bash
filename=${PLT_PATH}/actio/mall/dir_dr2parr_/dr2parr_tst/_flow_tst.sh
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
# cd "${PLT_PATH}"/actio/mall/dir_dr2parr_/.d.ax/.mdeb/.tmp

fx() {
    echo "dr2parr_ res_arr $1 root_dir>/dev/null"
    dr2parr_ res_arr $1 root_dir>/dev/null
    parr3e_ res_arr
}
res_arr=()
fx 0 >>res
res_arr=()
fx 1 >>res
res_arr=()
fx 2 >>res
res_arr=()
fx 3 >>res
# cr_tst_dir_ <dat &>>res

#{body_sh}
#?-------------------------------------
#?----------------------------------------------------
cd "$idir"
unset filename
unset PW
unset idir
#{ish}
