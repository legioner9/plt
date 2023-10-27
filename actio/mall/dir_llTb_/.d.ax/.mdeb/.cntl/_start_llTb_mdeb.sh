#!/bin/bash

file_name=${PLT_PATH}/actio/mall/dir_llTb_/.d.ax/.mdeb/.cntl/_start_llTb_mdeb.sh
this_dir=$(dirname "${file_name}")
this_name=$(basename "${file_name}")
#
. ${this_dir}/llTb_mdeb.sh
llTb_mdeb "$1"
#{body}
#{init_body}