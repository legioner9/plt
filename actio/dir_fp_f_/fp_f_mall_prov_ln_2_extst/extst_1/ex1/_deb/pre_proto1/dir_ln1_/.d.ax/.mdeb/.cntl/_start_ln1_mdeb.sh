#!/bin/bash

file_name=${PLT_PATH}/actio/dir_fp_f_/fp_f_mall_prov_ln_2_extst/extst_1/ex1/_deb/res/dir_ln1_/.d/.mdeb/.cntl/_start_ln1_mdeb.sh
this_dir=$(dirname "${file_name}")
this_name=$(basename "${file_name}")
#
. ${this_dir}/ln1_mdeb.sh
ln1_mdeb "$1"
#{body}
#{init_body}