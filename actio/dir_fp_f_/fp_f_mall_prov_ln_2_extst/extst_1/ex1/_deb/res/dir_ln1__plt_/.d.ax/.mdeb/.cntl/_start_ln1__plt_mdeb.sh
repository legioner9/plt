#!/bin/bash

file_name=${PLT_PATH}/actio/dir_fp_f_/fp_f_mall_prov_ln_2_extst/extst_1/ex1/_deb/res/dir_ln1__plt_/.d.ax/.mdeb/.cntl/_start_ln1__plt_mdeb.sh
this_dir=$(dirname "${file_name}")
this_name=$(basename "${file_name}")
#
. ${this_dir}/ln1__plt_mdeb.sh
ln1__plt_mdeb "$1"
. ${this_dir}/ln1__plt_mdeb.sh
ln1__plt_mdeb "$1"
#{body}
file_name=${PLT_PATH}/actio/dir_fp_f_/fp_f_mall_prov_ln_2_extst/extst_1/ex1/_deb/res/dir_ln1__plt_/.d.ax/.mdeb/.cntl/_start_ln1__plt_mdeb.sh
this_dir=$(dirname "${file_name}")
this_name=$(basename "${file_name}")
#
. ${this_dir}/ln1__plt_mdeb.sh
ln1__plt_mdeb "$1"
#{body}
#{init_body}