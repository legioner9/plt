#!/bin/bash

${_wrp2_} cd --_xxd ${dir_fns_}/dir_${name_fn_}/

${_wrp2_} mkdir --_cnd ${name_fn_}extst

${_wrp2_} cd --_xxd ${name_fn_}extst

#? cr_tst_sys_
echo -e "${HLIGHT}--- exec: ${_cr_tst_sys_} --name_dir extst_1 --ext extst ---${NORMAL}" #start files
${_cr_tst_sys_} --name_dir extst_1 --ext extst

${_wrp2_} cd --_xxd ${dir_fns_}/dir_${name_fn_}/${name_fn_}extst/extst_1