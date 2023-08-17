#!/bin/bash

file_name=${PLT_PATH}/actio/mall/dir_f5go_/.d.ax/.mdeb/.cntl/_start_f5go_mdeb.sh
this_dir=$(dirname "${file_name}")
this_name=$(basename "${file_name}")
#
. ${this_dir}/f5go_mdeb.sh
f5go_mdeb "$1"
#{body}
#{init_body}