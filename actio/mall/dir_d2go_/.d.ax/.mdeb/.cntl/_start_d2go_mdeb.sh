#!/bin/bash

file_name=${PLT_PATH}/actio/mall/dir_d2go_/.d.ax/.mdeb/.cntl/_start_d2go_mdeb.sh
this_dir=$(dirname "${file_name}")
this_name=$(basename "${file_name}")
#
. ${this_dir}/d2go_mdeb.sh
d2go_mdeb "$1"
#{body}
#{init_body}