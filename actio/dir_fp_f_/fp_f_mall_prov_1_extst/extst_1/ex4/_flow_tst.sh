#!/usr/bin/env bash
filename=${PLT_PATH}/actio/dir_fp_f_/fp_f_mall_prov_1_extst/extst_1/ex4/_flow_tst.sh
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

${_wrp2_} . --_xxf ${PLT_PATH}/actio/dir_fp_f_/fp_f_mall_prov_1_extst/extst_1/ex1/_deb/res/dir_ex1_/.d/.dd/cr_tree_gign_dir.sh
${_is_est_} ${PLT_PATH}/actio/dir_fp_f_/fp_f_mall_prov_1_extst/extst_1/ex1/_deb/res/dir_ex1_/.d/.dd/tree_gign_dir.man -f >${PLT_PATH}/actio/dir_fp_f_/fp_f_mall_prov_1_extst/extst_1/ex4/res
cat ${PLT_PATH}/actio/dir_fp_f_/fp_f_mall_prov_1_extst/extst_1/ex1/_deb/res/dir_ex1_/.d/.dd/tree_gign_dir.man >${PLT_PATH}/actio/dir_fp_f_/fp_f_mall_prov_1_extst/extst_1/ex4/res

#{body_sh}
#?-------------------------------------
#?----------------------------------------------------
cd "$idir"
unset filename
unset PW
unset idir
#{ish}
