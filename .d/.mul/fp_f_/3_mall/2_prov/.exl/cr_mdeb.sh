#!/bin/bash

${_wrp2_} cp -rf ${PATH_FS_STANDARTS_FX_DIR}/_mdeb ${dir_fns_}/dir_${name_fn_}/_${name_fn_}

mdeb_cntl_dir=${dir_fns_}/dir_${name_fn_}/_${name_fn_}/_mdeb/.cntl
cr_mdeb_insert=${PATH_MUL_DIR}/fp_f_/${grad_}/${tail_}/.insert/cr_mdeb

cd ${mdeb_cntl_dir}

${_cr_sh_} _cr_${name_fn_}mdeb_postfix.sh

${_cr_sh_} _start_${name_fn_}mdeb.sh

# echo -e "${RED}--- ${_cr_shfn_} ${name_fn_}mdeb.sh ---${NORMAL}" #exit 1
# read -p "read"

${_cr_shfn_} ${name_fn_}mdeb.sh
${_cr_f_dir_insert_} --name ${name_fn_}mdeb.sh --dir_insert ${cr_mdeb_insert}/fn_mdeb
${_obs_quis_} ${name_fn_}mdeb.sh
${_cr_f_dir_insert_} --name ${name_fn_}mdeb.sh --dir_insert ${cr_mdeb_insert}/fn_mdeb_zzz20

cd ${mdeb_cntl_dir}/start_files
${_cr_sh_} start_deb_mdeb.sh

#? ${PATH_MUL_DIR}/fp_f_/${grad_}/${tail_}/.insert/cr_mdeb




