#!/bin/bash

file_name=${PLT_PATH}/actio/mall/dir_uEfn_/.d.ax/.mdeb/.cntl/_start_uEfn_mdeb.sh
this_dir=$(dirname "${file_name}")
this_name=$(basename "${file_name}")
#
. ${this_dir}/uEfn_mdeb.sh
uEfn_mdeb "$1"
#{body}
#{init_body}