#!/bin/bash

file_name=${PLT_PATH}/actio/mall/dir_f2str_/.d.ax/.mdeb/.cntl/_start_f2str_mdeb.sh
this_dir=$(dirname "${file_name}")
this_name=$(basename "${file_name}")
#
cd "${this_dir}"
cd ..
echo -e "${GREEN}$(pwd) = $(pwd)${NORMAL}" #print variable
if [[ -z "$1" ]] || [[ -z "$2" ]] ; then
plt_exit "dual args mast be exist and mean create a"$1"_fp_f_mdeb_"$2""
fi
cr_shfn_ a"$1"_fp_f_mdeb_"$2".sh
#{body}
#{init_body}