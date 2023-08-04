#!/bin/bash

file_name=${PLT_PATH}/actio/mall/dir_plt_/.d.ax/.mdeb/.cntl/_start_plt_mdeb.sh
this_dir=$(dirname "${file_name}")
this_name=$(basename "${file_name}")
#
. ${this_dir}/plt_mdeb.sh
plt_mdeb "$1"
#{body}
#{init_body}