#!/usr/bin/env bash
filename=${PLT_PATH}/.d/.arb/bsh.arb/pstr2rgx__.ram/.grot/pstr2rgx__tst/_flow_tst.sh
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

str='#$^*()+. ?\'
echo "str=${str}" >>"${idir}"/res

echo "pstr2rgx__ str" >>"${idir}"/res
pstr2rgx__ str 

echo "str=${str}" >>"${idir}"/res

# cr_tst_dir_ <dat &>>res

#{body_sh}
#?-------------------------------------
#?----------------------------------------------------
cd "$idir"
unset filename
unset PW
unset idir
#{ish}
