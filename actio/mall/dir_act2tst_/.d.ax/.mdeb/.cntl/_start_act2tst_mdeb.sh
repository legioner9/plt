#!/bin/bash

file_name=${PLT_PATH}/actio/mall/dir_act2tst_/.d.ax/.mdeb/.cntl/_start_act2tst_mdeb.sh
this_dir=$(dirname "${file_name}")
this_name=$(basename "${file_name}")
#
. ${this_dir}/act2tst_mdeb.sh
act2tst_mdeb "$1"
#{body}
#{init_body}