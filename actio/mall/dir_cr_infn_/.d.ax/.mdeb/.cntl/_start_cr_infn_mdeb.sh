#!/bin/bash

file_name=${PLT_PATH}/actio/mall/dir_cr_infn_/.d.ax/.mdeb/.cntl/_start_cr_infn_mdeb.sh
this_dir=$(dirname "${file_name}")
this_name=$(basename "${file_name}")
#
. ${this_dir}/cr_infn_mdeb.sh
cr_infn_mdeb "$1"
#{body}
#{init_body}