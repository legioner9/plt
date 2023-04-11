#!/usr/bin/env bash
filename=${PLT_PATH}/actio/dir_mm_scr_/mm_scr_extst/extst_1/ex1_tst/_deb/file_1.res.sh
# echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file
PW=$(pwd)
idir="$(dirname ${filename})"
# cd "${idir}" || {
#     echo "${idir} not dir" >&2
#     return 1
# }
#?----------------------------------------------------
#?-------------------------------------
#{body_sh}
#?-------------------------------------
#?----------------------------------------------------
# cd "$idir"
unset filename
unset PW
unset idir
#{ish}
