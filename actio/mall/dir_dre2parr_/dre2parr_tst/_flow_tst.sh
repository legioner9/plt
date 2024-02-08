#!/usr/bin/env bash
filename=${PLT_PATH}/actio/mall/dir_dre2parr_/dre2parr_tst/_flow_tst.sh
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
    echo "dre2parr_ res_arr $1 $2 root_dir/05_a>/dev/null"
    dre2parr_ res_arr $1 $2 root_dir/05_a >/dev/null
    parr3e_ res_arr
}
res_arr=()
fx 0 "f" >>res
res_arr=()
fx 1 "f" >>res
res_arr=()
fx 2 "f" >>res
res_arr=()
fx 3 "f" >>res
# cr_tst_dir_ <dat &>>res

#{body_sh}
#?-------------------------------------
#?----------------------------------------------------
cd "$idir"
unset filename
unset PW
unset idir
#{ish}
