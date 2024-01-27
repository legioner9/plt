#!/usr/bin/env bash
filename=${PLT_PATH}/.d/.arb/bsh.arb/isn_d_or_f__.ram/.grot/isn_d_or_f__tst/_flow_tst.sh
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

isn_d_or_f__ dir_tst/dir.d 
isn_d_or_f__ dir_tst/file.f 
isn_d_or_f__ dir_tst/file.f.lns  
isn_d_or_f__ dir_tst/file.f.lnh 
isn_d_or_f__ dir_tst/socket.sock 
isn_d_or_f__ dir_tst/file.fifo 

ret2e isn_d_or_f__ dir_tst/dir.d >>res
ret2e isn_d_or_f__ dir_tst/file.f >>res
ret2e isn_d_or_f__ dir_tst/file.f.lns >>res 
ret2e isn_d_or_f__ dir_tst/file.f.lnh >>res
ret2e isn_d_or_f__ dir_tst/socket.sock >>res
ret2e isn_d_or_f__ dir_tst/file.fifo >>res

# cr_tst_dir_ <dat &>>res

#{body_sh}
#?-------------------------------------
#?----------------------------------------------------
cd "$idir"
unset filename
unset PW
unset idir
#{ish}
