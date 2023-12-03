#!/bin/bash

file_name=${PLT_PATH}/actio/mall/dir_d2e_/.d.ax/.mdeb/.cntl/_start_d2e_mdeb.sh
this_dir=$(dirname "${file_name}")
this_name=$(basename "${file_name}")
#
. ${this_dir}/d2e_mdeb.sh
d2e_mdeb "$1"
#{body}
#{init_body}