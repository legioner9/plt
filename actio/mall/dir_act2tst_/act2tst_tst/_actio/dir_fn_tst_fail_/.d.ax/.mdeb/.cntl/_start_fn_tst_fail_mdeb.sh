#!/bin/bash

file_name=${PLT_PATH}/actio/mall/dir_act2tst_/act2tst_tst/_actio/dir_fn_tst_fail_/.d.ax/.mdeb/.cntl/_start_fn_tst_fail_mdeb.sh
this_dir=$(dirname "${file_name}")
this_name=$(basename "${file_name}")
#
. ${this_dir}/fn_tst_fail_mdeb.sh
fn_tst_fail_mdeb "$1"
#{body}
#{init_body}