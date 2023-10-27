#!/bin/bash

file_name=${PLT_PATH}/actio/mall/dir_fs_/.d.ax/.mdeb/.cntl/_start_fs_mdeb.sh
this_dir=$(dirname "${file_name}")
this_name=$(basename "${file_name}")
#
. ${this_dir}/fs_mdeb.sh
fs_mdeb "$1"
#{body}
#{init_body}