#!/usr/bin/env bash
filename=${PLT_PATH}/actio/mall/dir_gig_f_/gig_f_extst/extst_1/ex1/_flow_tst_withot_echo.sh
# echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file
PW=$(pwd)
idir="$(dirname ${filename})"
cd "${idir}" || {
    echo "${idir} not dir" >&2
    return 1
}
#?----------------------------------------------------
#?-------------------------------------

unset lg1_
# gig_f_extst/extst_1/ex1
${_wrp2_} mkdir -p --_cnd ${PLT_PATH}/actio/mall/dir_gig_f_/gig_f_extst/extst_1/ex1/_deb/res/
${_wrp2_} mkdir -p --_cnd ${PLT_PATH}/actio/mall/dir_gig_f_/gig_f_extst/extst_1/ex1/_deb/pre/

${_wrp2_} rm -rfv --_cxd ${PLT_PATH}/actio/mall/dir_gig_f_/gig_f_extst/extst_1/ex1/_deb/res/dir_lg1_

${_wrp2_} rm -rfv ${PATH_SAL_AX_DIR}/lg1_

#? --_grad (1_prim|2_secu|3_mall|4_raqu|5_ague) --_tail (1_veri|2_prov|3_absc|...)

# echo | fo_f_ --_name_fn nnn2_ --_dir_fns ${PLT_PATH}/actio/dir_gig_f_/fo_f_1_extst/extst_1/ex1/_deb/res/ --_flow 1
${_gig_f_} --_name_fn lg1_ --_dir_fns ${PLT_PATH}/actio/mall/dir_gig_f_/gig_f_extst/extst_1/ex1/_deb/res --_grad mall --_tail prov -_cr

. ${PLT_PATH}/actio/mall/dir_gig_f_/gig_f_extst/extst_1/ex1/_deb/res/dir_lg1_/lg1_.nsc.sh

lg1_ > ${PLT_PATH}/actio/mall/dir_gig_f_/gig_f_extst/extst_1/ex1/res
lg1_ -h >> ${PLT_PATH}/actio/mall/dir_gig_f_/gig_f_extst/extst_1/ex1/res
lg1_ _mdeb 1 >> ${PLT_PATH}/actio/mall/dir_gig_f_/gig_f_extst/extst_1/ex1/res

cat ${PLT_PATH}/actio/mall/dir_gig_f_/gig_f_extst/extst_1/ex1/res




#{body_sh}
#?-------------------------------------
#?----------------------------------------------------
cd "$idir"
unset filename
unset PW
unset idir
#{ish}
