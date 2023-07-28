#!/bin/bash

#! _${name_fn_}/_debug/self_tst -> .d/.self_tst

dir_self_tst="${dir_fns_}/dir_${name_fn_}/.d/.self_tst"

${_wrp2_} cd --_xxd ${dir_self_tst}

${_cr_sh_} generate_self_tst_1.sh

file_path=${dir_self_tst}/generate_self_tst_1.sh

body=${insert_dir}/_fn_fff_self_tst_1/body_self_tst_1.insert

${_cr_f_} ${file_path} --fi0 ${body} --fr0 {body}

# ${_edit_} "${dir_fns_}/dir_${name_fn_}"

${_wrp2_} . --_xxf ${dir_self_tst}/generate_self_tst_1.sh