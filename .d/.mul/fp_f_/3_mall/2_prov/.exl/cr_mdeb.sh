#!/bin/bash

${_wrp2_} cp -rf ${PATH_FS_STANDARTS_FX_DIR}/_mdeb ${dir_fns_}/dir_${name_fn_}/_${name_fn_}

mdeb_cntl_dir=${dir_fns_}/dir_${name_fn_}/_${name_fn_}/_mdeb/.cntl
cr_mdeb_insert=${PATH_MUL_DIR}/fp_f_/${grad_}/${tail_}/.insert/cr_mdeb

cd ${mdeb_cntl_dir}

${_cr_sh_} _cr_${name_fn_}mdeb_postfix.sh
${_cr_f_dir_insert_} --name _cr_${name_fn_}mdeb_postfix.sh --dir_insert ${cr_mdeb_insert}/cr_fn_mdeb_postfix

${_cr_sh_} _start_${name_fn_}mdeb.sh
${_cr_f_dir_insert_} --name _start_${name_fn_}mdeb.sh --dir_insert ${cr_mdeb_insert}/_start_fn_mdeb

${_cr_f_} _start_${name_fn_}mdeb.sh --vi0 ${name_fn_} --vr0 {name_fn_}
${_cr_f_} _start_${name_fn_}mdeb.sh --vi0 ${mdeb_cntl_dir} --vr0 {mdeb_cntl_dir}

${_cr_shfn_} ${name_fn_}mdeb.sh
${_cr_f_dir_insert_} --name ${name_fn_}mdeb.sh --dir_insert ${cr_mdeb_insert}/fn_mdeb
${_obs_quis_} ${name_fn_}mdeb.sh
${_cr_f_dir_insert_} --name ${name_fn_}mdeb.sh --dir_insert ${cr_mdeb_insert}/fn_mdeb_zzz20

cd ${mdeb_cntl_dir}/start_files
${_cr_sh_} start_deb_mdeb.sh
${_cr_f_dir_insert_} --name start_deb_mdeb.sh --dir_insert ${cr_mdeb_insert}/start_deb_mdeb
${_cr_f_} start_deb_mdeb.sh --vi0 ${name_fn_} --vr0 {name_fn_}

#? ${PATH_MUL_DIR}/fp_f_/${grad_}/${tail_}/.insert/cr_mdeb
