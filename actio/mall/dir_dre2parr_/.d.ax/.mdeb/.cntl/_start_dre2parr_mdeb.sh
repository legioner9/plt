#!/bin/bash

file_name=${PLT_PATH}/actio/mall/dir_dre2parr_/.d.ax/.mdeb/.cntl/_start_dre2parr_mdeb.sh
this_dir=$(dirname "${file_name}")
this_name=$(basename "${file_name}")
#
. ${this_dir}/dre2parr_mdeb.sh
dre2parr_mdeb "$1"
#{body}
#{init_body}