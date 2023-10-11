#!/bin/bash

file_name=${PLT_PATH}/actio/mall/dir_bcp_l2d_/.d.ax/.mdeb/.cntl/_start_bcp_l2d_mdeb.sh
this_dir=$(dirname "${file_name}")
this_name=$(basename "${file_name}")
#
. ${this_dir}/bcp_l2d_mdeb.sh
bcp_l2d_mdeb "$1"
#{body}
#{init_body}