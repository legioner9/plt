#!/usr/bin/env bash
filename=${PLT_PATH}/actio/mall/dir_arb2f_/arb2f_tst/_flow_tst.sh
# echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file
PW=$(pwd)
idir="$(dirname ${filename})"
cd "${idir}" || {
    echo "${idir} not dir" >&2
    return 1
}
#?----------------------------------------------------
#?-------------------------------------

cd check || {
    plt_exit "in ${FNN} : FAIL_EXEC : cd ${d_name} return 1"
    return 1
}

rm -v c_file0.check
cp -v c_file0.init c_file0.check

rm -v c_file1.check
cp -v c_file1.init c_file1.check


echo -e "${HLIGHT}--- arb2f_ c_file0.check 0 ---${NORMAL}" #start files
arb2f_ c_file0.check 0 -dpl

echo -e "${HLIGHT}--- arb2f_ c_file1.check 1 ---${NORMAL}" #start files
arb2f_ c_file1.check 1 -dpl

: >${PLT_PATH}/actio/mall/dir_arb2f_/arb2f_tst/res
cat c_file0.check >>${PLT_PATH}/actio/mall/dir_arb2f_/arb2f_tst/res

echo $'\n' >>${PLT_PATH}/actio/mall/dir_arb2f_/arb2f_tst/res
cat c_file1.check >>${PLT_PATH}/actio/mall/dir_arb2f_/arb2f_tst/res

# cr_tst_dir_ <dat &>>res

#{body_sh}
#?-------------------------------------
#?----------------------------------------------------
cd "$idir"
unset filename
unset PW
unset idir
#{ish}
