#!/bin/bash

file_name=${PLT_PATH}/actio/dir_fp_f_/raqu_extst/extst_1/ex1/_deb/res/dir_ln3_/.d.ax/.mdeb/.cntl/_start_ln3_mdeb.sh
this_dir=$(dirname "${file_name}")
this_name=$(basename "${file_name}")
#
. ${this_dir}/ln3_mdeb.sh
ln3_mdeb "$1"
#{body}
#{init_body}