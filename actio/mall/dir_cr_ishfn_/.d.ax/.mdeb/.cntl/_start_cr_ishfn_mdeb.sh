#!/bin/bash

file_name=${PLT_PATH}/actio/mall/dir_cr_ishfn_/.d.ax/.mdeb/.cntl/_start_cr_ishfn_mdeb.sh
this_dir=$(dirname "${file_name}")
this_name=$(basename "${file_name}")
#
. ${this_dir}/cr_ishfn_mdeb.sh
cr_ishfn_mdeb "$1"
#{body}
#{init_body}