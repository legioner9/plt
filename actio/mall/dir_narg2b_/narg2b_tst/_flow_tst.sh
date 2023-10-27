#!/usr/bin/env bash
filename=${PLT_PATH}/actio/mall/dir_narg2b_/narg2b_tst/_flow_tst.sh
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
echo "narg2b_c_ 2 2 2" >>res
ret2e narg2b_c_ 2 2 2 >>res
echo "narg2b_c_ 1 2 2" >>res
ret2e narg2b_c_ 1 2 2 >>res
echo "narg2b_c_ 1 1 2" >>res
ret2e narg2b_c_ 1 1 2 >>res
echo "narg2b_c_ 2 1 2" >>res
ret2e narg2b_c_ 2 1 2 >>res
echo "narg2b_c_ 2 1 1" >>res
ret2e narg2b_c_ 2 1 1 >>res
echo "narg2b_c_ 1 1 1" >>res
ret2e narg2b_c_ 1 1 1 >>res
echo "narg2b_c_ 1 1" >>res
ret2e narg2b_c_ 1 1 >>res
echo "narg2b_c_ 1 " >>res
ret2e narg2b_c_ 1 >>res
echo "narg2b_c_" >>res
ret2e narg2b_c_ >>res

# cr_tst_dir_ <dat &>>res

#{body_sh}
#?-------------------------------------
#?----------------------------------------------------
cd "$idir"
unset filename
unset PW
unset idir
#{ish}
