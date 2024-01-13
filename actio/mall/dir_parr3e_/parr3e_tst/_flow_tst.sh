#!/usr/bin/env bash
filename=${PLT_PATH}/actio/mall/dir_parr3e_/parr3e_tst/_flow_tst.sh
# echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file
PW=$(pwd)
idir="$(dirname ${filename})"
cd "${idir}" || {
    echo "${idir} not dir" >&2
    return 1
}
#?----------------------------------------------------
#?-------------------------------------

p_arr=("vsd fea" "e wv" "b er")
# echo -e "${GREEN}\${p_arr[@]} = ${p_arr[*]}${NORMAL}" #print variable

parr3e_ p_arr

# cr_tst_dir_ <dat &>>res

#{body_sh}
#?-------------------------------------
#?----------------------------------------------------
cd "$idir"
unset filename
unset PW
unset idir
#{ish}
