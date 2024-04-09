#!/bin/bash

file_name=${PLT_PATH}/actio/mall/dir_bcp_strc_/.d.ax/.mdeb/.cntl/_start_bcp_strc_mdeb.sh
this_dir=$(dirname "${file_name}")
this_name=$(basename "${file_name}")
#
. ${this_dir}/bcp_strc_mdeb.sh
bcp_strc_mdeb "$1"
#{body}
#{init_body}