#!/bin/bash

file_name=${PLT_PATH}/actio/dir_nid1_/.d/.mdeb/.cntl/_start_nid1_mdeb.sh
this_dir=$(dirname "${file_name}")
this_name=$(basename "${file_name}")
#
. ${this_dir}/nid1_mdeb.sh
nid1_mdeb "$1"
#{body}
#{init_body}