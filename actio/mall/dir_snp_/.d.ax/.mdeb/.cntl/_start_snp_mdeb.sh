#!/bin/bash

file_name=${PLT_PATH}/actio/mall/dir_snp_/.d.ax/.mdeb/.cntl/_start_snp_mdeb.sh
this_dir=$(dirname "${file_name}")
this_name=$(basename "${file_name}")
#
. ${this_dir}/snp_mdeb.sh
snp_mdeb "$1"
#{body}
#{init_body}