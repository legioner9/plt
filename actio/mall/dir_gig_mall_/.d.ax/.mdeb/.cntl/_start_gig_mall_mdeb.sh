#!/bin/bash

file_name=${PLT_PATH}/actio/mall/dir_gig_mall_/.d.ax/.mdeb/.cntl/_start_gig_mall_mdeb.sh
this_dir=$(dirname "${file_name}")
this_name=$(basename "${file_name}")
#
. ${this_dir}/gig_mall_mdeb.sh
gig_mall_mdeb "$1"
#{body}
#{init_body}