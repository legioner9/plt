#!/usr/bin/env bash
filename=${PLT_PATH}/.d/.arb/bsh.arb/rln__.ram/.grot/rln__tst/_flow_tst.sh
# echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file
PW=$(pwd)
idir_wq23412="$(dirname ${filename})"
cd "${idir_wq23412}" || {
    echo "${idir_wq23412} not dir" >&2
    return 1
}
#?----------------------------------------------------
#?-------------------------------------

: >"${idir_wq23412}"/res

rm -rfv dir_root/dist_copy.d
rm -rfv dir_root/dist.d
mkdir -v dir_root/dist.d

echo -e "${GREEN}\$idir_wq23412 = $idir_wq23412${NORMAL}" #print variable

rln__ "dir_root/src.d/src.file" "dir_root/dist.d" "001_result"

ls -l dir_root/dist.d

echo -e "${HLIGHT}--- readlink dir_root/dist.d/001_result.rnl ---${NORMAL}" #start files
readlink dir_root/dist.d/001_resulte.rnl
echo -e "${HLIGHT}--- cat dir_root/dist.d/_001_result.rsym ---${NORMAL}" #start files
cat dir_root/dist.d/_001_result.rsym

cp -rf dir_root/dist.d dir_root/dist_copy.d

plt_info "check link in copied dir 'dir_root/dist_copy.d'"

echo -e "${HLIGHT}--- readlink dir_root/dist_copy.d/src.file.rnl ---${NORMAL}" #start files

echo "readlink dir_root/dist_copy.d/001_result.rnl" >>"${idir_wq23412}"/res
readlink dir_root/dist_copy.d/001_result.rnl >>"${idir_wq23412}"/res

echo "dir_root/dist_copy.d/_001_result.rsym" >>"${idir_wq23412}"/res
cat dir_root/dist_copy.d/_001_result.rsym >>"${idir_wq23412}"/res

# cr_tst_dir_ <dat &>>res

#{body_sh}
#?-------------------------------------
#?----------------------------------------------------
cd "$idir"
unset filename
unset PW
unset idir
#{ish}
