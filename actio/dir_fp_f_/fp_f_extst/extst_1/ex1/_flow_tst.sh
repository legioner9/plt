#!/usr/bin/env bash
filename=${PLT_PATH}/actio/dir_fp_f_/fp_f_extst/extst_1/ex1/_flow_tst.sh
# echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file
PW=$(pwd)
idir="$(dirname ${filename})"
cd "${idir}" || {
    echo "${idir} not dir" >&2
    return 1
}
#?----------------------------------------------------
#?-------------------------------------

wrp2_ rm -rfv --_cxd ${PLT_PATH}/actio/dir_fp_f_/fo_f_extst/extst_1/ex1/_deb/res/dir_nnn2_

# echo | fo_f_ --_name_fn nnn2_ --_dir_fns ${PLT_PATH}/actio/dir_fp_f_/fo_f_1_extst/extst_1/ex1/_deb/res/ --_flow 1
fp_f_ --_name_fn nnn2_ --_dir_fns ${PLT_PATH}/actio/dir_fp_f_/fo_f_extst/extst_1/ex1/_deb/res/ --_flow 1

#{body_sh}

#{body_sh}
#?-------------------------------------
#?----------------------------------------------------
cd "$idir"
unset filename
unset PW
unset idir
#{ish}
