#!/bin/bash

file_name=${PLT_PATH}/actio/mall/dir_pre_zip_git_/.d.ax/.mdeb/.cntl/_start_pre_zip_git_mdeb.sh
this_dir=$(dirname "${file_name}")
this_name=$(basename "${file_name}")
#
. ${this_dir}/pre_zip_git_mdeb.sh
pre_zip_git_mdeb "$1"
#{body}
#{init_body}