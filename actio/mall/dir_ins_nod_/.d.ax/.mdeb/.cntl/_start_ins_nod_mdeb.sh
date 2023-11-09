#!/bin/bash

file_name=${PLT_PATH}/actio/mall/dir_ins_nod_/.d.ax/.mdeb/.cntl/_start_ins_nod_mdeb.sh
this_dir=$(dirname "${file_name}")
this_name=$(basename "${file_name}")
#
. ${this_dir}/ins_nod_mdeb.sh
ins_nod_mdeb "$1"
#{body}
#{init_body}