#!/bin/bash

file_name=${PLT_PATH}/actio/mall/dir_osh_/.d.ax/.mdeb/.cntl/_start_osh_mdeb.sh
this_dir=$(dirname "${file_name}")
this_name=$(basename "${file_name}")
#
. ${this_dir}/osh_mdeb.sh
osh_mdeb "$1"
#{body}
#{init_body}