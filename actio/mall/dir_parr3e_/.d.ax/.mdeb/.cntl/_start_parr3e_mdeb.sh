#!/bin/bash

file_name=${PLT_PATH}/actio/mall/dir_parr3e_/.d.ax/.mdeb/.cntl/_start_parr3e_mdeb.sh
this_dir=$(dirname "${file_name}")
this_name=$(basename "${file_name}")
#
. ${this_dir}/parr3e_mdeb.sh
parr3e_mdeb "$1"
#{body}
#{init_body}