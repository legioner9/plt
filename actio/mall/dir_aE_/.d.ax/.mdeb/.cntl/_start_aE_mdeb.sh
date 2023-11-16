#!/bin/bash

file_name=${PLT_PATH}/actio/mall/dir_aE_/.d.ax/.mdeb/.cntl/_start_aE_mdeb.sh
this_dir=$(dirname "${file_name}")
this_name=$(basename "${file_name}")
#
. ${this_dir}/aE_mdeb.sh
aE_mdeb "$1"
#{body}
#{init_body}