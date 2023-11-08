#!/bin/bash

file_name=${PLT_PATH}/actio/mall/dir_fol_/.d.ax/.mdeb/.cntl/_start_fol_mdeb.sh
this_dir=$(dirname "${file_name}")
this_name=$(basename "${file_name}")
#
. ${this_dir}/fol_mdeb.sh
fol_mdeb "$1"
#{body}
#{init_body}