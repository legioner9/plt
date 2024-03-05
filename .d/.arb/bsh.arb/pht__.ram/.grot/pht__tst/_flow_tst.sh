#!/usr/bin/env bash
filename=${PLT_PATH}/.d/.arb/bsh.arb/pht__.ram/.grot/pht__tst/_flow_tst.sh
# echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file
PW=$(pwd)
idir_sdf5345="$(dirname ${filename})"
cd "${idir_sdf5345}" || {
    echo "${idir_sdf5345} not dir" >&2
    return 1
}
#?----------------------------------------------------
#?-------------------------------------

: >res

cd ${idir_sdf5345}/dir_tst

pht__ 1 exa_1.php
# cr_tst_dir_ <dat &>>res

#{body_sh}
#?-------------------------------------
#?----------------------------------------------------
cd "$idir"
unset filename
unset PW
unset idir
#{ish}
