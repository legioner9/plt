#!/bin/bash

file_name=${PLT_PATH}/actio/mall/dir_edit_/.d.ax/.mdeb/.cntl/_start_edit_mdeb.sh
this_dir=$(dirname "${file_name}")
this_name=$(basename "${file_name}")
#
. ${this_dir}/edit_mdeb.sh
edit_mdeb "$1"
#{body}
#{init_body}