#!/usr/bin/env bash
filename=${PLT_PATH}/actio/mall/dir_cr_infn_/cr_infn_tst/_flow_tst.sh
# echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file
PW=$(pwd)
idir="$(dirname ${filename})"
cd "${idir}" || {
    echo "${idir} not dir" >&2
    return 1
}
#?----------------------------------------------------
#?-------------------------------------

r_dir=${PLT_PATH}/actio/mall/dir_cr_infn_/cr_infn_tst/_de.b
par_dir="${r_dir}"/01_first/01_second.d

# plt_pause "DO? cr_infn_ --_fn 02_ttm_fn --_root_dir file://$r_dir in file://$par_dir"

cd "${par_dir}" || plt_exit "NOT_DIR : ${par_dir}"

rm -v "${PLT_PATH}"/actio/mall/dir_cr_infn_/cr_infn_tst/_de.b/01_first/01_second.d/02_ttm_fn_01_first_01_second_d__de_b.sh

echo | cr_infn_ --_fn "02_ttm_fn" --_root_dir "${r_dir}"

cp "${PLT_PATH}"/actio/mall/dir_cr_infn_/cr_infn_tst/_de.b/01_first/01_second.d/02_ttm_fn_01_first_01_second_d__de_b.sh "${PLT_PATH}"/actio/mall/dir_cr_infn_/cr_infn_tst/_res

# cr_tst_dir_ <dat &>>res

#{body_sh}
#?-------------------------------------
#?----------------------------------------------------
cd "$idir"
unset filename
unset PW
unset idir
#{ish}
