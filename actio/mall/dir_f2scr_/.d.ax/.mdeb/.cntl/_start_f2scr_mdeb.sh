#!/bin/bash

file_name=${PLT_PATH}/actio/mall/dir_f2scr_/.d.ax/.mdeb/.cntl/_start_f2scr_mdeb.sh
this_dir=$(dirname "${file_name}")
this_name=$(basename "${file_name}")
#
. ${this_dir}/f2scr_mdeb.sh
f2scr_mdeb "$1"
#{body}
#{init_body}