#!/usr/bin/env bash
filename=${PLT_PATH}/.d/.arb/bsh.arb/t2c__.ram/.grot/t2c__tst/_flow_tst.sh
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
pwd >>res

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

echo dir.d >>res
t2c__ dir_tst/dir.d >>res
echo file.f >>res
t2c__ dir_tst/file.f >>res
echo file.f.lns >>res
t2c__ dir_tst/file.f.lns >>res
echo file.f.lnh >>res
t2c__ dir_tst/file.f.lnh >>res
echo socket.sock >>res
t2c__ dir_tst/socket.sock >>res
echo file.fifo >>res
t2c__ dir_tst/file.fifo >>res

# cr_tst_dir_ <dat &>>res

#{body_sh}
#?-------------------------------------
#?----------------------------------------------------
cd "$idir"
unset filename
unset PW
unset idir
#{ish}
