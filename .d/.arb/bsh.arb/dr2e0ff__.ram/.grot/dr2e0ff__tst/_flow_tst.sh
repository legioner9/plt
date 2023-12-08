#!/usr/bin/env bash
filename=${PLT_PATH}/.d/.arb/bsh.arb/dr2e0ff__.ram/.grot/dr2e0ff__tst/_flow_tst.sh
# echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file
PW=$(pwd)
idir="$(dirname ${filename})"
cd "${idir}" || {
    echo "${idir} not dir" >&2
    return 1
}
#?----------------------------------------------------
#?-------------------------------------

: >${idir}/res
: >${idir}/tmp

${_dr2e0ff__} ${PLT_PATH}/.d/.arb/bsh.arb/dr2e0ff__.ram/.grot/dr2e0ff__tst/_dir_init tst >>tmp

#! REMOVE abs path
IFS='
'
for item in $(f2e_ ${idir}/tmp); do
    echo $(prs_f -ne "${item}")
    echo $(prs_f -ne "${item}") >>${idir}/res
done
IFS=$' \t\n'
# cr_tst_dir_ <dat &>>res

#{body_sh}
#?-------------------------------------
#?----------------------------------------------------
cd "$idir"
unset filename
unset PW
unset idir
#{ish}
