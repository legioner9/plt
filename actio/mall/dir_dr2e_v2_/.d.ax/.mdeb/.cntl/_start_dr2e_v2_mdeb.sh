#!/bin/bash

file_name=${PLT_PATH}/actio/mall/dir_dr2e_v2_/.d.ax/.mdeb/.cntl/_start_dr2e_v2_mdeb.sh
this_dir=$(dirname "${file_name}")
this_name=$(basename "${file_name}")
#
. ${this_dir}/dr2e_v2_mdeb.sh
dr2e_v2_mdeb "$1"
#{body}
#{init_body}