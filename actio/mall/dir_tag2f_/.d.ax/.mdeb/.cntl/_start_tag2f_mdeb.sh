#!/bin/bash

file_name=${PLT_PATH}/actio/mall/dir_tag2f_/.d.ax/.mdeb/.cntl/_start_tag2f_mdeb.sh
this_dir=$(dirname "${file_name}")
this_name=$(basename "${file_name}")
#
. ${this_dir}/tag2f_mdeb.sh
tag2f_mdeb "$1"
#{body}
#{init_body}