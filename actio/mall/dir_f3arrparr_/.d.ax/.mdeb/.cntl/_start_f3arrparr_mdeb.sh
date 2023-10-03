#!/bin/bash

file_name=${PLT_PATH}/actio/mall/dir_f3arrparr_/.d.ax/.mdeb/.cntl/_start_f3arrparr_mdeb.sh
this_dir=$(dirname "${file_name}")
this_name=$(basename "${file_name}")
#
. ${this_dir}/f3arrparr_mdeb.sh
f3arrparr_mdeb "$1"
#{body}
#{init_body}