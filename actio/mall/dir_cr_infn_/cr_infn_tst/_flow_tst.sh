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

cd _res

rm -v "01_ttm_fn_02_pd_fool_.sh"

echo | cr_infn_ --_fn "01_ttm_fn" --_par_dir "02_pd" --_par_fn fool_

# cr_tst_dir_ <dat &>>res

#{body_sh}
#?-------------------------------------
#?----------------------------------------------------
cd "$idir"
unset filename
unset PW
unset idir
#{ish}
