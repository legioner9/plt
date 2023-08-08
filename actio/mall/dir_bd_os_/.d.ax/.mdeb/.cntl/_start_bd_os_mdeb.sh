#!/bin/bash

file_name=${PLT_PATH}/actio/mall/dir_bd_os_/.d.ax/.mdeb/.cntl/_start_bd_os_mdeb.sh
this_dir=$(dirname "${file_name}")
this_name=$(basename "${file_name}")
#
. ${this_dir}/bd_os_mdeb.sh
bd_os_mdeb "$1"
#{body}
#{init_body}