#!/usr/bin/env bash
filename=${PLT_PATH}/actio/mall/dir_pzip_to_/pzip_to_tst/_flow_tst.sh
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

dir_003="${PLT_PATH}/actio/mall/dir_pzip_to_/pzip_to_tst/003"
src=${dir_003}/src.d/src.file
dist=${dir_003}/dist.d/dist.zip

# echo -e "${HLIGHT}--- rm ${dist} ---${NORMAL}" #start files
# rm "${dist}"

echo -e "${HLIGHT}--- pzip_to_ ${PD_READ} file://${dist} file://${src} ---${NORMAL}" #start files
pzip_to_ "${PD_READ}" "${dist}" "${src}"

echo -e "${HLIGHT}--- ls file://${dir_003}/dist.d ---${NORMAL}" #start files
ls "${dir_003}"/dist.d

cd "${dir_003}"/dist.d || plt_exit

echo -e "${HLIGHT}--- unzip -P ${PD_READ} ${dist} ---${NORMAL}" #start files
unzip -P "${PD_READ}" "${dist}"

echo -e "${HLIGHT}--- ls file://${dir_003}/dist.d ---${NORMAL}" #start files
ls "${dir_003}"/dist.d

echo -e "${HLIGHT}--- cat file://${dir_003}/dist.d/src.file ---${NORMAL}" #start files
cat "${dir_003}"/dist.d/src.file >>"${idir}"/res

# cr_tst_dir_ <dat &>>res

#{body_sh}
#?-------------------------------------
#?----------------------------------------------------
cd "$idir"
unset filename
unset PW
unset idir
#{ish}
