#!/usr/bin/env bash
filename=${PLT_PATH}/actio/mall/dir_bdpl_pzip_/bdpl_pzip_extst/extst_1/ex2/_flow_tst.sh
# echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file
PW=$(pwd)
idir_324523="$(dirname ${filename})"
cd "${idir_324523}" || {
    echo "${idir} not dir" >&2
    return 1
}
#?----------------------------------------------------
#?-------------------------------------
: >${idir_324523}/res

t_dir=${PLT_PATH}/actio/mall/dir_bdpl_pzip_/bdpl_pzip_extst/extst_1/ex2
rm -rfv ${t_dir}/for_mdeb_2/dir_4

mdeb_num=${t_dir}/for_mdeb_2/dir_4

cp -rf ${t_dir}/_004 ${mdeb_num}

cd ${mdeb_num} || plt_exit

ls -l ${mdeb_num}/dist.d

#! FILE dist.d/src.file.zip

plt_info "dist.d/src.file.zip to src.d if src.file exst"

bdpl_pzip_ ${PD_READ} ${mdeb_num}/src.d ${mdeb_num}/dist.d/src.file.zip 1 -dpl

echo -e "${CYAN}--- cat file://${mdeb_num}/dist.d.bck/src.file ---${NORMAL}" >>${idir_324523}/res
cat ${mdeb_num}/src.d/src.file >>${idir_324523}/res

#! DIR dist.d/src.d.zip

plt_info "dist.d/src.d.zip to src.d if src.d exst"

bdpl_pzip_ ${PD_READ} ${mdeb_num}/src.d ${mdeb_num}/dist.d/src.d.zip 1 -dpl

echo -e "${CYAN}--- tree file://${mdeb_num} ---${NORMAL}" >>${idir_324523}/res
tree ${mdeb_num} >>${idir_324523}/res

echo -e "${CYAN}--- cat file://${mdeb_num}/dist.d.bck/src.d/in_src_d.file ---${NORMAL}" >>${idir_324523}/res
cat ${mdeb_num}/src.d/src.d/in_src_d.file >>${idir_324523}/res

cat ${idir_324523}/res

#{body_sh}
#?-------------------------------------
#?----------------------------------------------------
cd "$idir"
unset filename
unset PW
unset idir
#{ish}
