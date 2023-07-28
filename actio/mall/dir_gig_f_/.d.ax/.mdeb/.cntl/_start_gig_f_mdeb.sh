#!/bin/bash

file_name=${PLT_PATH}/actio/mall/dir_gig_f_/.d.ax/.mdeb/.cntl/_start_gig_f_mdeb.sh
this_dir=$(dirname "${file_name}")
this_name=$(basename "${file_name}")
#
. ${this_dir}/gig_f_mdeb.sh
gig_f_mdeb "$1"
#{body}
#{init_body}
