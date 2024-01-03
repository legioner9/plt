#!/bin/bash

file_name=${PLT_PATH}/actio/mall/dir_nm_opi_/.d.ax/.mdeb/.cntl/_start_nm_opi_mdeb.sh
this_dir=$(dirname "${file_name}")
this_name=$(basename "${file_name}")
#
. ${this_dir}/nm_opi_mdeb.sh
nm_opi_mdeb "$1"
#{body}
#{init_body}