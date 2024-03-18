#!/bin/bash

file_name=${PLT_PATH}/actio/mall/dir_parr2mm_/.d.ax/.mdeb/.cntl/_start_parr2mm_mdeb.sh
this_dir=$(dirname "${file_name}")
this_name=$(basename "${file_name}")
#
. ${this_dir}/parr2mm_mdeb.sh
parr2mm_mdeb "$1"
#{body}
#{init_body}