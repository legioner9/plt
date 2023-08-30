#!/bin/bash

file_name=${PLT_PATH}/actio/mall/dir_f3mm2eval_/.d.ax/.mdeb/.cntl/_start_f3mm2eval_mdeb.sh
this_dir=$(dirname "${file_name}")
this_name=$(basename "${file_name}")
#
. ${this_dir}/f3mm2eval_mdeb.sh
f3mm2eval_mdeb "$1"
#{body}
#{init_body}