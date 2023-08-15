#!/bin/bash

file_name=${PLT_PATH}/actio/mall/dir_el_nf_/.d.ax/.mdeb/.cntl/_start_el_nf_mdeb.sh
this_dir=$(dirname "${file_name}")
this_name=$(basename "${file_name}")
#
. ${this_dir}/el_nf_mdeb.sh
el_nf_mdeb "$1"
#{body}
#{init_body}