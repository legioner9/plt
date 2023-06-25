#!/bin/bash

file_name=${PLT_PATH}/actio/dir_cr_sh2_/.d/.mdeb/.cntl/_start_cr_sh2_mdeb.sh
this_dir=$(dirname "${file_name}")
this_name=$(basename "${file_name}")
#
. ${this_dir}/cr_sh2_mdeb.sh
cr_sh2_mdeb "$1"
#{body}
#{init_body}