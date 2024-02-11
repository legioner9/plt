#!/bin/bash

file_name=${PLT_PATH}/actio/mall/dir_bdpl_pzip_/.d.ax/.mdeb/.cntl/_start_bdpl_pzip_mdeb.sh
this_dir=$(dirname "${file_name}")
this_name=$(basename "${file_name}")
#
. ${this_dir}/bdpl_pzip_mdeb.sh
bdpl_pzip_mdeb "$1"
#{body}
#{init_body}