#!/bin/bash

file_name=${PLT_PATH}/actio/dir_fp_f_/fp_f_mall_prov_1_extst/extst_1/ex1/_deb/res/dir_ex1_/.d/.mdeb/.cntl/_start_ex1_mdeb.sh
this_dir=$(dirname "${file_name}")
this_name=$(basename "${file_name}")
#
. ${this_dir}/ex1_mdeb.sh
ex1_mdeb "$1"
. ${this_dir}/ex1_mdeb.sh
ex1_mdeb "$1"
. ${this_dir}/ex1_mdeb.sh
ex1_mdeb "$1"
#{body}
file_name=${PLT_PATH}/actio/dir_fp_f_/fp_f_mall_prov_1_extst/extst_1/ex1/_deb/res/dir_ex1_/.d/.mdeb/.cntl/_start_ex1_mdeb.sh
this_dir=$(dirname "${file_name}")
this_name=$(basename "${file_name}")
#
. ${this_dir}/ex1_mdeb.sh
ex1_mdeb "$1"
. ${this_dir}/ex1_mdeb.sh
ex1_mdeb "$1"
#{body}
file_name=${PLT_PATH}/actio/dir_fp_f_/fp_f_mall_prov_1_extst/extst_1/ex1/_deb/res/dir_ex1_/.d/.mdeb/.cntl/_start_ex1_mdeb.sh
this_dir=$(dirname "${file_name}")
this_name=$(basename "${file_name}")
#
. ${this_dir}/ex1_mdeb.sh
ex1_mdeb "$1"
#{body}
#{init_body}