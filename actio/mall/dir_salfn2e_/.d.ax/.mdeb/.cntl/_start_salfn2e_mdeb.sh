#!/bin/bash

file_name=${PLT_PATH}/actio/mall/dir_salfn2e_/.d.ax/.mdeb/.cntl/_start_salfn2e_mdeb.sh
this_dir=$(dirname "${file_name}")
this_name=$(basename "${file_name}")
#
. ${this_dir}/salfn2e_mdeb.sh
salfn2e_mdeb "$1"
#{body}
#{init_body}