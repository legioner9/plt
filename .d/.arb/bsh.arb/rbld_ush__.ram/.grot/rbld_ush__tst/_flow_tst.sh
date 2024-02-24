#!/usr/bin/env bash
filename=${PLT_PATH}/.d/.arb/bsh.arb/rbld_ush__.ram/.grot/rbld_ush__tst/_flow_tst.sh
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
ush_path=${PLT_PATH}/.d/.arb/ush.arb

rm -rf ${ush_path}/tst.ram

cp -r ${ush_path}/_.ram/.  ${ush_path}/tst.ram

rbld_ush__ 

echo -e "${HLIGHT}--- ls -h ${ush_path} ---${NORMAL}" #start files
ls -h ${ush_path}

# cr_tst_dir_ <dat &>>res

#{body_sh}
#?-------------------------------------
#?----------------------------------------------------
cd "$idir"
unset filename
unset PW
unset idir
#{ish}
