#!/bin/bash

file_name=${PLT_PATH}/actio/mall/dir_gig_f_/gig_f_extst/extst_1/ex1/_deb/res/dir_lg1_/.d.ax/.mdeb/.cntl/_start_lg1_mdeb.sh
this_dir=$(dirname "${file_name}")
this_name=$(basename "${file_name}")
#
. ${this_dir}/lg1_mdeb.sh
lg1_mdeb "$1"
#{body}
#{init_body}