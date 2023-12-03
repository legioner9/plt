#!/usr/bin/env bash
filename=${PLT_PATH}/actio/mall/dir_d2e_/d2e_tst/_flow_tst.sh
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

echo -e "--- d2e_ 0 -fd d_tst rb ---" >>res
d2e_ 0 -fd d_tst rb >>res

echo -e "--- d2e_ -n -fd d_tst rb ---" >>res
d2e_ -n -fd d_tst rb >>res

echo -e "--- d2e_ -e -fd d_tst rb ---" >>res
d2e_ -e -fd d_tst rb >>res

echo -e "--- d2e_ -d -fd d_tst rb ---" >>res
d2e_ -d -fd d_tst rb >>res

echo -e "--- d2e_ -ne -fd d_tst rb ---" >>res
d2e_ -ne -fd d_tst rb >>res

echo -e "--- d2e_ -n -dd d_tst rb ---" >>res
d2e_ -n -dd d_tst rb >>res

echo -e "--- d2e_ -n -ff d_tst rb ---" >>res
d2e_ -n -ff d_tst rb >>res

echo -e "--- d2e_ 0 -fd d_tst  ---" >>res
d2e_ 0 -fd d_tst >>res

echo -e "--- d2e_ -n -fd d_tst  ---" >>res
d2e_ -n -fd d_tst >>res

echo -e "--- d2e_ -e -fd d_tst  ---" >>res
d2e_ -e -fd d_tst >>res

echo -e "--- d2e_ -d -fd d_tst  ---" >>res
d2e_ -d -fd d_tst >>res

echo -e "--- d2e_ -ne -fd d_tst  ---" >>res
d2e_ -ne -fd d_tst >>res

echo -e "--- d2e_ -n -dd d_tst  ---" >>res
d2e_ -n -dd d_tst >>res

echo -e "--- d2e_ -n -ff d_tst  ---" >>res
d2e_ -n -ff d_tst >>res

# cr_tst_dir_ <dat &>>res

#{body_sh}
#?-------------------------------------
#?----------------------------------------------------
cd "$idir"
unset filename
unset PW
unset idir
#{ish}
