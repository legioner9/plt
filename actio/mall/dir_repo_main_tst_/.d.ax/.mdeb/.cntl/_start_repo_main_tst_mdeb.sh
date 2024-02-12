#!/bin/bash

file_name=${PLT_PATH}/actio/mall/dir_repo_main_tst_/.d.ax/.mdeb/.cntl/_start_repo_main_tst_mdeb.sh
this_dir=$(dirname "${file_name}")
this_name=$(basename "${file_name}")
#
. ${this_dir}/repo_main_tst_mdeb.sh
repo_main_tst_mdeb "$1"
#{body}
#{init_body}