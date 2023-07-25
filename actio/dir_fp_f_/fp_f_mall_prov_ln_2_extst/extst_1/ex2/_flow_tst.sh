#!/usr/bin/env bash
filename=${PLT_PATH}/actio/dir_fp_f_/fp_f_mall_prov_ln_2_extst/extst_1/ex2/_flow_tst.sh
# echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file
PW=$(pwd)
idir="$(dirname ${filename})"
cd "${idir}" || {
    echo "${idir} not dir" >&2
    return 1
}
#?----------------------------------------------------
#?-------------------------------------

unset ln1_
"${_ehh}" . /home/st/REPOBARE/_repo/plt/actio/dir_fp_f_/fp_f_mall_prov_ln_2_extst/extst_1/ex1/_deb/res/dir_ln1_/ln1_.nsc.sh
ln1_ >res
ln1_ -h >>res
ln1_ _mdeb 1 >>res

#{body_sh}
#?-------------------------------------
#?----------------------------------------------------
cd "$idir"
unset filename
unset PW
unset idir
#{ish}
