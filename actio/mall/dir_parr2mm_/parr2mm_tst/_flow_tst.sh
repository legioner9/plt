#!/usr/bin/env bash
filename=${PLT_PATH}/actio/mall/dir_parr2mm_/parr2mm_tst/_flow_tst.sh
# echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file
PW=$(pwd)
idir_fds345243="$(dirname ${filename})"
cd "${idir}" || {
    echo "${idir_fds345243} not dir" >&2
    return 1
}
#?----------------------------------------------------
#?-------------------------------------

: >${idir_fds345243}/res

a1=(1 2)
# local a1
a2=(11 22)
# local a2
result=
echo -e "${GREEN}\$result = $result${NORMAL}" #print variable

parr2mm_ a1 a2 result 2

echo -e "${GREEN}\$result = $result${NORMAL}" #print variable

echo $result >${idir_fds345243}/res

# cr_tst_dir_ <dat &>>res

#{body_sh}
#?-------------------------------------
#?----------------------------------------------------
cd "$idir"
unset filename
unset PW
unset idir
#{ish}
