#!/bin/bash

file_name=${PLT_PATH}/actio/mall/dir_mm_exec_dir_/.d.ax/.mdeb/.cntl/_start_mm_exec_dir_mdeb.sh
this_dir=$(dirname "${file_name}")
this_name=$(basename "${file_name}")
#
. ${this_dir}/mm_exec_dir_mdeb.sh
mm_exec_dir_mdeb "$1"
#{body}
#{init_body}