#!/bin/bash

file_name=${PLT_PATH}/actio/mall/dir_uE_/.d.ax/.mdeb/.cntl/_start_uE_mdeb.sh
this_dir=$(dirname "${file_name}")
this_name=$(basename "${file_name}")
#
. ${this_dir}/uE_mdeb.sh
uE_mdeb "$1"
#{body}
#{init_body}