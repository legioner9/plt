#!/usr/bin/env bash
filename=${PLT_PATH}/.d/.arb/bsh.arb/t2c__.ram/.grot/t2c__tst/_flow_tst.sh
# echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file
PW=$(pwd)
idir_fewfwer23="$(dirname ${filename})"
cd "${idir_fewfwer23}" || {
    echo "${idir_fewfwer23} not dir" >&2
    return 1
}
#?----------------------------------------------------
#?-------------------------------------

: >"${idir_fewfwer23}"/res
pwd >>"${idir_fewfwer23}"/res

# arr_nod=()
# arr_nod=("dir.d" "file.f" "file.f.lns" "file.f.lnh" "socket.sock" "file.fifo")

# . ${REPO_PATH}/plt/.d/.arb/bsh.arb/t2c__.ram/.grot/t2c__tst/dir_tst/add_nods.sh

# for node_1234556 in "${arr_nod[@]}"; do
#     rm -rfv dir_tst/"${node_1234556}"
# done

echo | . ${REPO_PATH}/plt/.d/.arb/bsh.arb/t2c__.ram/.grot/t2c__tst/dir_tst/add_nods.sh

echo dir.d
t2c__ dir_tst/dir.d
echo file.f
t2c__ dir_tst/file.f
echo file.f.lns
t2c__ dir_tst/file.f.lns
echo file.f.lnh
t2c__ dir_tst/file.f.lnh
echo socket.sock
t2c__ dir_tst/socket.sock
echo file.fifo
t2c__ dir_tst/file.fifo

echo dir.d >>"${idir_fewfwer23}"/res
t2c__ dir_tst/dir.d >>"${idir_fewfwer23}"/res
echo file.f >>"${idir_fewfwer23}"/res
t2c__ dir_tst/file.f >>"${idir_fewfwer23}"/res
echo file.f.lns >>"${idir_fewfwer23}"/res
t2c__ dir_tst/file.f.lns >>"${idir_fewfwer23}"/res
echo file.f.lnh >>"${idir_fewfwer23}"/res
t2c__ dir_tst/file.f.lnh >>"${idir_fewfwer23}"/res
echo socket.sock >>"${idir_fewfwer23}"/res
t2c__ dir_tst/socket.sock >>"${idir_fewfwer23}"/res
echo file.fifo >>"${idir_fewfwer23}"/res
t2c__ dir_tst/file.fifo >>"${idir_fewfwer23}"/res

# cr_tst_dir_ <dat &>>res

#{body_sh}
#?-------------------------------------
#?----------------------------------------------------
cd "$idir"
unset filename
unset PW
unset idir
#{ish}
