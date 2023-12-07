#!/bin/bash

file_name=${PLT_PATH}/actio/mall/dir_nit_/.d.ax/.mdeb/.cntl/_start_nit_mdeb.sh
this_dir=$(dirname "${file_name}")
this_name=$(basename "${file_name}")
#
. ${this_dir}/nit_mdeb.sh
nit_mdeb "$1"
#{body}
#{init_body}