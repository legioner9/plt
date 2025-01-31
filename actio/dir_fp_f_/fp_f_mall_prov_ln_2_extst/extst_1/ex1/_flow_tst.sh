#!/usr/bin/env bash
filename=${PLT_PATH}/actio/dir_fp_f_/fp_f_mall_prov_ln_2_extst/extst_1/ex1/_flow_tst.sh
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

${_wrp2_} mkdir -p --_cnd ${PLT_PATH}/actio/dir_fp_f_/fp_f_mall_prov_ln_2_extst/extst_1/ex1/_deb/res/
${_wrp2_} mkdir -p --_cnd ${PLT_PATH}/actio/dir_fp_f_/fp_f_mall_prov_ln_2_extst/extst_1/ex1/_deb/pre/

${_wrp2_} rm -rfv --_cxd ${PLT_PATH}/actio/dir_fp_f_/fp_f_mall_prov_ln_2_extst/extst_1/ex1/_deb/res/dir_ln1_

${_wrp2_} rm -fv ${PATH_SAL_AX_DIR}/ln1_.sal

#? --_grad (1_prim|2_secu|3_mall|4_raqu|5_ague) --_tail (1_veri|2_prov|3_absc|...)

# echo | fo_f_ --_name_fn nnn2_ --_dir_fns ${PLT_PATH}/actio/dir_fp_f_/fo_f_1_extst/extst_1/ex1/_deb/res/ --_flow 1
echo | ${_fp_f_} --_name_fn ln1_ --_dir_fns ${PLT_PATH}/actio/dir_fp_f_/fp_f_mall_prov_ln_2_extst/extst_1/ex1/_deb/res --_grad mall --_tail prov

#{body_sh}
#?-------------------------------------
#?----------------------------------------------------
cd "$idir"
unset filename
unset PW
unset idir
#{ish}
