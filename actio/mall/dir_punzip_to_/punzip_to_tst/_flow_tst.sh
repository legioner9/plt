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

echo -e "${HLIGHT}--- . ${src}/_cr_zip_src.sh ---${NORMAL}" #start files
. ${dir_tst}/src.d/_cr_zip_src.sh

#! FILE

src=${dir_tst}/src.d/src.file.zip
dist=${dir_tst}/dist.d

rm -v ${dir_tst}/dist.d/src.file

echo -e "${HLIGHT}--- punzip_to_ ${PD_READ} file://${dist} file://${src} ---${NORMAL}" #start files
punzip_to_ "${PD_READ}" "${dist}" "${src}"

echo -e "${HLIGHT}--- diff ${dir_tst}/src.d/src.file ${dir_tst}/dist.d/src.file ---${NORMAL}" >>"${idir}"/res
diff "${dir_tst}"/src.d/src.file "${dir_tst}"/dist.d/src.file &>>"${idir}"/res

#! DIR

src=${dir_tst}/src.d/in_src.d.zip
dist=${dir_tst}/dist.d

rm -vr ${dir_tst}/dist.d/in_src.d

echo -e "${HLIGHT}--- punzip_to_ ${PD_READ} file://${dist} file://${src} ---${NORMAL}" #start files
punzip_to_ "${PD_READ}" "${dist}" "${src}"

echo -e "${HLIGHT}--- diff -r ${dir_tst}/src.d/in_src.d ${dir_tst}/dist.d/in_src.d ---${NORMAL}" >>"${idir}"/res
diff -r ${dir_tst}/src.d/in_src.d ${dir_tst}/dist.d/in_src.d &>>"${idir}"/res

# echo -e "${HLIGHT}--- zip -P ${PD_READ} src.file.zip src.file ---${NORMAL}" #start files
# zip -P "${PD_READ}" src.file.zip src.file

# echo -e "${HLIGHT}--- diff ${dist}/src.file.zip ${src} ---${NORMAL}" #start files
# diff "${dist}"/src.file.zip "${src}"

# echo -e "${HLIGHT}--- cmp -b -l ${dist}/src.file.zip ${src} ---${NORMAL}" #start files
# cmp -b -l "${dist}"/src.file.zip "${src}"

# diff "${dist}"/src.file.zip "${src}" &>>"${idir}"/res

# diff -y <(unzip -l "${dist}"/src.file.zip) <(unzip -l "${src}")
# diff -y <(unzip -l "${dist}"/src.file.zip) <(unzip -l "${src}")

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
