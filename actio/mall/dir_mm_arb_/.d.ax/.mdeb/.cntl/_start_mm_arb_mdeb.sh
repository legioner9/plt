#!/bin/bash

file_name=${PLT_PATH}/actio/mall/dir_mm_arb_/.d.ax/.mdeb/.cntl/_start_mm_arb_mdeb.sh
this_dir=$(dirname "${file_name}")
this_name=$(basename "${file_name}")
#
. ${this_dir}/mm_arb_mdeb.sh
mm_arb_mdeb "$1"
#{body}
#{init_body}