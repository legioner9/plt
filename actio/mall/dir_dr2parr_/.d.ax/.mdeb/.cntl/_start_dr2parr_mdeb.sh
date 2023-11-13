#!/bin/bash

file_name=${PLT_PATH}/actio/mall/dir_dr2parr_/.d.ax/.mdeb/.cntl/_start_dr2parr_mdeb.sh
this_dir=$(dirname "${file_name}")
this_name=$(basename "${file_name}")
#
. ${this_dir}/dr2parr_mdeb.sh
dr2parr_mdeb "$1"
#{body}
#{init_body}