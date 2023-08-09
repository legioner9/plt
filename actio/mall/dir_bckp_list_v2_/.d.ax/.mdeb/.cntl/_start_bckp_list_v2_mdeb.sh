#!/bin/bash

file_name=${PLT_PATH}/actio/mall/dir_bckp_list_v2_/.d.ax/.mdeb/.cntl/_start_bckp_list_v2_mdeb.sh
this_dir=$(dirname "${file_name}")
this_name=$(basename "${file_name}")
#
. ${this_dir}/bckp_list_v2_mdeb.sh
bckp_list_v2_mdeb "$1"
#{body}
#{init_body}