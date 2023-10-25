#!/bin/bash

file_name=${PLT_PATH}/actio/mall/dir_bcp_conf_/.d.ax/.mdeb/.cntl/_start_bcp_conf_mdeb.sh
this_dir=$(dirname "${file_name}")
this_name=$(basename "${file_name}")
#
. ${this_dir}/bcp_conf_mdeb.sh
bcp_conf_mdeb "$1"
#{body}
#{init_body}