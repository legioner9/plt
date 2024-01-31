#!/usr/bin/env bash
filename=${PLT_PATH}/.d/.arb/bsh.arb/isn_lcru__.ram/.grot/isn_lcru__tst/_flow_tst.sh
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

if_str() {
    # echo -e "${GREEN}\$@ = $@${NORMAL}" #print variable
    echo -e "${HLIGHT}--- sn_lcru__ $@ ---${NORMAL}" #start files

    if isn_lcru__ "$@"; then
        echo "true"
    else
        echo "fail"
    fi

}

if_str "fewre"
if_str "fewre мва"



# cr_tst_dir_ <dat &>>res

#{body_sh}
#?-------------------------------------
#?----------------------------------------------------
cd "$idir"
unset filename
unset PW
unset idir
#{ish}
