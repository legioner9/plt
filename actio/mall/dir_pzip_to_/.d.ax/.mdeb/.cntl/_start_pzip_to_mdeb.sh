#!/bin/bash

file_name=${PLT_PATH}/actio/mall/dir_pzip_to_/.d.ax/.mdeb/.cntl/_start_pzip_to_mdeb.sh
this_dir=$(dirname "${file_name}")
this_name=$(basename "${file_name}")
#
. ${this_dir}/pzip_to_mdeb.sh
pzip_to_mdeb "$1"
#{body}
#{init_body}