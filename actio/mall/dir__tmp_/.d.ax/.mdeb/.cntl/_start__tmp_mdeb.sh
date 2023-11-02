#!/bin/bash

file_name=${PLT_PATH}/actio/mall/dir__tmp_/.d.ax/.mdeb/.cntl/_start__tmp_mdeb.sh
this_dir=$(dirname "${file_name}")
this_name=$(basename "${file_name}")
#
. ${this_dir}/_tmp_mdeb.sh
_tmp_mdeb "$1"
#{body}
#{init_body}