#!/bin/bash

file_name=${PLT_PATH}/actio/mall/dir_d3mm2exl_/.d.ax/.mdeb/.cntl/_start_d3mm2exl_mdeb.sh
this_dir=$(dirname "${file_name}")
this_name=$(basename "${file_name}")
#
. ${this_dir}/d3mm2exl_mdeb.sh
d3mm2exl_mdeb "$1"
#{body}
#{init_body}