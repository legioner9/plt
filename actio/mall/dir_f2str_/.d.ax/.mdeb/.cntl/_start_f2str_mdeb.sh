#!/bin/bash

file_name=${PLT_PATH}/actio/mall/dir_f2str_/.d.ax/.mdeb/.cntl/_start_f2str_mdeb.sh
this_dir=$(dirname "${file_name}")
this_name=$(basename "${file_name}")
#
. ${this_dir}/f2str_mdeb.sh
f2str_mdeb "$1"
#{body}
#{init_body}