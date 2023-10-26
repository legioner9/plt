#!/bin/bash

file_name=${PLT_PATH}/actio/mall/dir_mm_execf_/.d.ax/.mdeb/.cntl/_start_mm_execf_mdeb.sh
this_dir=$(dirname "${file_name}")
this_name=$(basename "${file_name}")
#
. ${this_dir}/mm_execf_mdeb.sh
mm_execf_mdeb "$1"
#{body}
#{init_body}