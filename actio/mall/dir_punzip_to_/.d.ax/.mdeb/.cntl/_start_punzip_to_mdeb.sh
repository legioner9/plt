#!/bin/bash

file_name=${PLT_PATH}/actio/mall/dir_punzip_to_/.d.ax/.mdeb/.cntl/_start_punzip_to_mdeb.sh
this_dir=$(dirname "${file_name}")
this_name=$(basename "${file_name}")
#
. ${this_dir}/punzip_to_mdeb.sh
punzip_to_mdeb "$1"
#{body}
#{init_body}