#!/bin/bash

file_name=${PLT_PATH}/actio/mall/dir_f5arr_/.d.ax/.mdeb/.cntl/_start_f5arr_mdeb.sh
this_dir=$(dirname "${file_name}")
this_name=$(basename "${file_name}")
#
. ${this_dir}/f5arr_mdeb.sh
f5arr_mdeb "$1"
#{body}
#{init_body}