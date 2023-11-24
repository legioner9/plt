#!/bin/bash

file_name=${PLT_PATH}/actio/mall/dir_ram2arb_/.d.ax/.mdeb/.cntl/_start_ram2arb_mdeb.sh
this_dir=$(dirname "${file_name}")
this_name=$(basename "${file_name}")
#
. ${this_dir}/ram2arb_mdeb.sh
ram2arb_mdeb "$1"
#{body}
#{init_body}