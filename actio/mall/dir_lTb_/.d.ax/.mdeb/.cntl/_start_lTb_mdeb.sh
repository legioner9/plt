#!/bin/bash

file_name=${PLT_PATH}/actio/mall/dir_lTb_/.d.ax/.mdeb/.cntl/_start_lTb_mdeb.sh
this_dir=$(dirname "${file_name}")
this_name=$(basename "${file_name}")
#
. ${this_dir}/lTb_mdeb.sh
lTb_mdeb "$1"
#{body}
#{init_body}