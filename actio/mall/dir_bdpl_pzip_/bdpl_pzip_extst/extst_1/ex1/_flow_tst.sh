#!/usr/bin/env bash
filename=${PLT_PATH}/actio/mall/dir_bdpl_pzip_/bdpl_pzip_extst/extst_1/ex1/_flow_tst.sh
# echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file
PW=$(pwd)
idir_32452="$(dirname ${filename})"
cd "${idir_32452}" || {
    echo "${idir} not dir" >&2
    return 1
}
#?----------------------------------------------------
#?-------------------------------------

plt_info "bcp to dist.d + dpl to dist.d.bck"

: >${idir_32452}/res

t_dir=${PLT_PATH}/actio/mall/dir_bdpl_pzip_/bdpl_pzip_extst/extst_1/ex1


mdeb_num=${t_dir}/for_mdeb_2/dir_4

rm -rfv ${mdeb_num}
cp -rf ${t_dir}/_003 ${mdeb_num}

#! FILE src.d/src.file

cd ${mdeb_num} || plt_exit

echo -e "${CYAN}--- ls -l file://${mdeb_num}/dist.d ---${NORMAL}" #sistem info mesage
ls -l ${mdeb_num}/dist.d

bdpl_pzip_ ${PD_READ} ${mdeb_num}/dist.d/src.file ${mdeb_num}/src.d/src.file 1 -bcp

bdpl_pzip_ ${PD_READ} ${mdeb_num}/dist.d.bck ${mdeb_num}/dist.d/src.file.zip 1 -dpl

# echo -e "${CYAN}--- tree file://${mdeb_num} ---${NORMAL}" >>${idir_32452}/res
# tree ${mdeb_num} >>${idir_32452}/res

echo -e "${CYAN}--- cat file://${mdeb_num}/dist.d.bck/src.file ---${NORMAL}" >>${idir_32452}/res
cat ${mdeb_num}/dist.d.bck/src.file >>${idir_32452}/res

#! DIR src.d/src.d

cd ${mdeb_num} || plt_exit

echo -e "${CYAN}--- ls -l file://${mdeb_num}/dist.d ---${NORMAL}" #sistem info mesage
ls -l ${mdeb_num}/dist.d

bdpl_pzip_ ${PD_READ} ${mdeb_num}/dist.d/src.d ${mdeb_num}/src.d/src.d 1 -bcp

bdpl_pzip_ ${PD_READ} ${mdeb_num}/dist.d.bck ${mdeb_num}/dist.d/src.d.zip 1 -dpl

echo -e "${CYAN}--- tree file://${mdeb_num} ---${NORMAL}" >>${idir_32452}/res
tree ${mdeb_num} >>${idir_32452}/res

echo -e "${CYAN}--- cat file://${mdeb_num}/dist.d.bck/src.d/in_src_d.file ---${NORMAL}" >>${idir_32452}/res
cat ${mdeb_num}/dist.d.bck/src.d/in_src_d.file >>${idir_32452}/res

cat ${idir_32452}/res

# cr_tst_dir_ <dat &>>res

#{body_sh}
#?-------------------------------------
#?----------------------------------------------------
cd "$idir"
unset filename
unset PW
unset idir
#{ish}
