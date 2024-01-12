#!/bin/bash

file_name=${PLT_PATH}/actio/mall/dir_nmw_opi_/.d.ax/.mdeb/.cntl/_start_nmw_opi_mdeb.sh
this_dir=$(dirname "${file_name}")
this_name=$(basename "${file_name}")
#
. ${this_dir}/nmw_opi_mdeb.sh
nmw_opi_mdeb "$1"
#{body}
#{init_body}