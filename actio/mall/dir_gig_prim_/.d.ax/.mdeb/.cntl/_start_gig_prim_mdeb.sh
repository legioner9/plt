#!/bin/bash

file_name=${PLT_PATH}/actio/mall/dir_gig_prim_/.d.ax/.mdeb/.cntl/_start_gig_prim_mdeb.sh
this_dir=$(dirname "${file_name}")
this_name=$(basename "${file_name}")
#
. ${this_dir}/gig_prim_mdeb.sh
gig_prim_mdeb "$1"
#{body}
#{init_body}