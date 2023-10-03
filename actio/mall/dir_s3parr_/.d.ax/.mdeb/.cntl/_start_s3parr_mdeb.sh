#!/bin/bash

file_name=${PLT_PATH}/actio/mall/dir_s3parr_/.d.ax/.mdeb/.cntl/_start_s3parr_mdeb.sh
this_dir=$(dirname "${file_name}")
this_name=$(basename "${file_name}")
#
. ${this_dir}/s3parr_mdeb.sh
s3parr_mdeb "$1"
#{body}
#{init_body}