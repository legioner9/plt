#!/bin/bash

file_name=${PLT_PATH}/actio/mall/dir_mm_plt_/.d.ax/.mdeb/.cntl/_start_mm_plt_mdeb.sh
this_dir=$(dirname "${file_name}")
this_name=$(basename "${file_name}")
#
. ${this_dir}/mm_plt_mdeb.sh
mm_plt_mdeb "$1"
#{body}
#{init_body}