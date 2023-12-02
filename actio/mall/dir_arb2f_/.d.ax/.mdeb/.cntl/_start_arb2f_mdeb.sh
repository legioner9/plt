#!/bin/bash

file_name=${PLT_PATH}/actio/mall/dir_arb2f_/.d.ax/.mdeb/.cntl/_start_arb2f_mdeb.sh
this_dir=$(dirname "${file_name}")
this_name=$(basename "${file_name}")
#
. ${this_dir}/arb2f_mdeb.sh
arb2f_mdeb "$1"
#{body}
#{init_body}