#!/bin/bash

file_name=${PLT_PATH}/actio/mall/dir_bd_communis_v2_/.d.ax/.mdeb/.cntl/_start_bd_communis_v2_mdeb.sh
this_dir=$(dirname "${file_name}")
this_name=$(basename "${file_name}")
#
. ${this_dir}/bd_communis_v2_mdeb.sh
bd_communis_v2_mdeb "$1"
#{body}
#{init_body}