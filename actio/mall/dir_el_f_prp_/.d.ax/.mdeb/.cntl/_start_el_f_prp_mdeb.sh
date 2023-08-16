#!/bin/bash

file_name=${PLT_PATH}/actio/mall/dir_el_f_prp_/.d.ax/.mdeb/.cntl/_start_el_f_prp_mdeb.sh
this_dir=$(dirname "${file_name}")
this_name=$(basename "${file_name}")
#
. ${this_dir}/el_f_prp_mdeb.sh
el_f_prp_mdeb "$1"
#{body}
#{init_body}