#!/bin/bash

file_name=${PLT_PATH}/actio/mall/dir_garb_/.d.ax/.mdeb/.cntl/_start_garb_mdeb.sh
this_dir=$(dirname "${file_name}")
this_name=$(basename "${file_name}")
#
. ${this_dir}/garb_mdeb.sh
garb_mdeb "$1"
#{body}
#{init_body}