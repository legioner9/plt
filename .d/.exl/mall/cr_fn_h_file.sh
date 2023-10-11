#!/bin/bash

cp -v "${h_tml}" "${hf_fn}"

"${_cr_f_dir_insert_}" --name "${hf_fn}" --dir_insert "${FN_SAL_DIR}/${FNN}".d.h
"${_cr_f_dir_insert_}" --name "${hf_fn}" --dir_insert "${PATH_NID_DIR}/mall/.insert"

all_cntl="${PATH_NID_DIR}/mall/mall.cntl"
"${_cr_f_}" "${hf_fn}" --fi0 "${all_cntl}" --fr0 "{all_cntl}"