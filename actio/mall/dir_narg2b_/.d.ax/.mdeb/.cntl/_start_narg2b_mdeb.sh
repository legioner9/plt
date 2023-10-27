#!/bin/bash

file_name=${PLT_PATH}/actio/mall/dir_narg2b_/.d.ax/.mdeb/.cntl/_start_narg2b_mdeb.sh
this_dir=$(dirname "${file_name}")
this_name=$(basename "${file_name}")
#
. ${this_dir}/narg2b_mdeb.sh
narg2b_mdeb "$1"
#{body}
#{init_body}