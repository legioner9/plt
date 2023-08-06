#!/bin/bash

file_name=${PLT_PATH}/actio/mall/dir_pull_bck_push_v2_/.d.ax/.mdeb/.cntl/_start_pull_bck_push_v2_mdeb.sh
this_dir=$(dirname "${file_name}")
this_name=$(basename "${file_name}")
#
. ${this_dir}/pull_bck_push_v2_mdeb.sh
pull_bck_push_v2_mdeb "$1"
#{body}
#{init_body}