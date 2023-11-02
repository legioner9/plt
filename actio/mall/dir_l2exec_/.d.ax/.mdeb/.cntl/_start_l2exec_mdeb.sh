#!/bin/bash

file_name=${PLT_PATH}/actio/mall/dir_l2exec_/.d.ax/.mdeb/.cntl/_start_l2exec_mdeb.sh
this_dir=$(dirname "${file_name}")
this_name=$(basename "${file_name}")
#
. ${this_dir}/l2exec_mdeb.sh
l2exec_mdeb "$1"
#{body}
#{init_body}