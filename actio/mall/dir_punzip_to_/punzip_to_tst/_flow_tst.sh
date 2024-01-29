#!/usr/bin/env bash
filename=${PLT_PATH}/actio/mall/dir_punzip_to_/punzip_to_tst/_flow_tst.sh
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

dir_tst=${REPO_PATH}/plt/actio/mall/dir_punzip_to_/punzip_to_tst/dir_tst

src=${dir_tst}/src.d/src.file.zip
dist=${dir_tst}/dist.d

# echo -e "${HLIGHT}--- rm ${dist} ---${NORMAL}" #start files
# rm "${dist}"

rm -v ${dir_tst}/dist.d/src.file
# rm -v ${dist}

echo -e "${HLIGHT}--- punzip_to_ ${PD_READ} file://${dist} file://${src} ---${NORMAL}" #start files
punzip_to_ "${PD_READ}" "${dist}" "${src}"

cd "${dist}" || plt_exit

echo -e "${HLIGHT}--- unzip -P ${PD_READ} ${dist} ---${NORMAL}" #start files
zip -P "${PD_READ}" src.file.zip src.file

echo -e "${HLIGHT}--- diff ${dist}/src.file.zip ${src} ---${NORMAL}" #start files
diff "${dist}"/src.file.zip "${src}"

diff "${dist}"/src.file.zip "${src}" &>>"${idir}"/res

echo >>"${idir}"/res

# cr_tst_dir_ <dat &>>res

#{body_sh}
#?-------------------------------------
#?----------------------------------------------------
cd "$idir"
unset filename
unset PW
unset idir
#{ish}
