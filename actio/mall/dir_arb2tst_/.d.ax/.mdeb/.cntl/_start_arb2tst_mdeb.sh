#!/bin/bash

file_name=${PLT_PATH}/actio/mall/dir_arb2tst_/.d.ax/.mdeb/.cntl/_start_arb2tst_mdeb.sh
this_dir=$(dirname "${file_name}")
this_name=$(basename "${file_name}")
#
. ${this_dir}/arb2tst_mdeb.sh
arb2tst_mdeb "$1"
#{body}
#{init_body}