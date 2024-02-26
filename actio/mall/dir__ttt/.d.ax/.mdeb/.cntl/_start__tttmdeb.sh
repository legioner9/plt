#!/bin/bash

file_name=${PLT_PATH}/actio/mall/dir__ttt/.d.ax/.mdeb/.cntl/_start__tttmdeb.sh
this_dir=$(dirname "${file_name}")
this_name=$(basename "${file_name}")
#
. ${this_dir}/_tttmdeb.sh
_tttmdeb "$1"
#{body}
#{init_body}