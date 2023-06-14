#!/usr/bin/env bash
filename=${PLT_PATH}/actio/dir_fp_f_/fp_f_mall_prov_1_extst/extst_1/ex3/_flow_tst.sh
# echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file
PW=$(pwd)
idir="$(dirname ${filename})"
cd "${idir}" || {
    echo "${idir} not dir" >&2
    return 1
}
#?----------------------------------------------------
#?-------------------------------------
unset ex1_
${_wrp2_} . --_xxf /home/st/REPOBARE/_repo/plt/actio/dir_fp_f_/fp_f_mall_prov_1_extst/extst_1/ex1/_deb/res/dir_ex1_/ex1_.ax.sh
ex1_ -h > res

#{body_sh}
#?-------------------------------------
#?----------------------------------------------------
cd "$idir"
unset filename
unset PW
unset idir
#{ish}
