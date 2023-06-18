#!/bin/bash

${_wrp2_} cp -rf ${PATH_FS_STANDARTS_FX_DIR}/_mdeb ${dir_fns_}/dir_${name_fn_}/_${name_fn_}

mdeb_cntl_dir=${dir_fns_}/dir_${name_fn_}/_${name_fn_}/_mdeb/.cntl

cd ${mdeb_cntl_dir}

${_cr_sh_} _cr_${name_fn_}mdeb_postfix.sh
${_cr_sh_} _start_${name_fn_}mdeb.sh
${_cr_shfn_} ${name_fn_}mdeb.sh

cd ${mdeb_cntl_dir}/start_files
${_cr_sh_} start_deb_mdeb.sh
