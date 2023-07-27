#!/bin/bash

file_name=${PLT_PATH}/actio/dir_fp_f_/prim_extst/extst_1/ex1/_deb/res/dir_ln2_/.d.ax/.mdeb/.cntl/_start_ln2_mdeb.sh
this_dir=$(dirname "${file_name}")
this_name=$(basename "${file_name}")
#
. ${this_dir}/ln2_mdeb.sh
ln2_mdeb "$1"
#{body}
#{init_body}