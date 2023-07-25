#!/bin/bash
#! global variables from ARGSP: name_fn_, dir_fns_, flow_
#? cp tml to fs
. ${PATH_MUL_DIR}/fp_f_/${grad_}/${tail_}/.exl/cp_tml_to_fs.sh

# wrp2_ mkdir --_cnd "${PWD}/dir_${name_fn_}"

# wrp2_ cp -rf --_xxf "${tml_dir}/f_f_" --_xnf "${PWD}/dir_${name_fn_}/${name_fn_}.sh"

# wrp2_ cp -rf --_xxf "${tml_dir}/file.man" --_xnf "$PWD/dir_${name_fn_}/${name_fn_}.man"

# wrp2_ cp -rf --_xxf "${tml_dir}/file.lst" --_xnf "$PWD/dir_${name_fn_}/${name_fn_}.lst"

# wrp2_ cp -rf --_xxd "${tml_dir}/_00000" --_xnd "$PWD/dir_${name_fn_}/_${name_fn_}"

#? ------------------------------------------------------------

#? insert to dir_${name_fn_}/${name_fn_}.puml

. ${PATH_MUL_DIR}/fp_f_/${grad_}/${tail_}/.exl/ins_main_fn_puml.sh

#? insert to main ${name_fn_}.sh
src_fn_file=${PWD}/dir_${name_fn_}/${name_fn_}.sh

${_is_est_} ${src_fn_file} -f

${_cr_f_dir_insert_} --name ${src_fn_file} --dir_insert ${insert_dir}/_fn_fff_sh/1

${_cr_f_dir_insert_} --name ${src_fn_file} --dir_insert ${insert_dir}/_fn_fff_sh/2

# name_fn_
${_cr_f_} ${src_fn_file} --vi0 ${name_fn_} --vr0 {name_fn_}

# dir_fns_
${_cr_f_} ${src_fn_file} --vi0 ${dir_fns_} --vr0 {dir_fns_}

${_upg_path_} ${src_fn_file}

#? ------------------------------------------------------------

#* work in _debug >>>>>>>>>>
${_wrp2_} cd --_xxd ${dir_fns_}/dir_${name_fn_}/_${name_fn_}/_debug/v1

${_cr_sh_} deb_1.sh

${_wrp2_} cd --_xxd ${dir_fns_}/dir_${name_fn_}/_${name_fn_}/_debug

${_cr_sh_} mdeb.sh

#? _fn/${name_fn_}_mdeb.sh
file_path=${dir_fns_}/dir_${name_fn_}/_${name_fn_}/_fn/${name_fn_}mdeb.sh

${_cr_shfn_} ${file_path}

body_fn=${insert_dir}/_fn_fff_mdeb_sh/body_fn_mdeb.insert

${_cr_f_} ${file_path} --fi0 ${body_fn} --fr0 {body_fn}

${_obs_quis_} ${file_path}

#? insert to {zzz20} in _fn/${name_fn_}_mdeb.sh
arr_res=${insert_dir}/_fn_fff_mdeb_sh/arr_res.insert

${_cr_f_} ${file_path} --fi0 ${arr_res} --fr0 {arr_res}

#? _fn/${name_fn_}_mdeb_set_1.sh
file_path=${dir_fns_}/dir_${name_fn_}/_${name_fn_}/_fn/${name_fn_}mdeb_set_1.sh

${_cr_shfn_} ${file_path}

body_fn=${insert_dir}/_fn_fff_mdeb_set_1_sh/body_mdeb_set_1.insert

${_cr_f_} ${file_path} --fi0 ${body_fn} --fr0 {body_fn}

#? _debug/self_tst/generate_self_tst_1.sh
${_wrp2_} cd --_xxd ${dir_fns_}/dir_${name_fn_}/_${name_fn_}/_debug/self_tst

${_cr_sh_} generate_self_tst_1.sh

file_path=${dir_fns_}/dir_${name_fn_}/_${name_fn_}/_debug/self_tst/generate_self_tst_1.sh

body=${insert_dir}/_fn_fff_self_tst_1/body_self_tst_1.insert

${_cr_f_} ${file_path} --fi0 ${body} --fr0 {body}

${_edit_} "${dir_fns_}/dir_${name_fn_}"

. ${dir_fns_}/dir_${name_fn_}/_${name_fn_}/_debug/self_tst/generate_self_tst_1.sh
#* work in _debug <<<<<<<<<<

#* work in extst >>>>>>>>>>
${_wrp2_} cd --_xxd ${dir_fns_}/dir_${name_fn_}/

${_wrp2_} mkdir --_cnd ${name_fn_}extst

${_wrp2_} cd --_xxd ${name_fn_}extst

#? cr_tst_sys_
${_cr_tst_sys_} --name_dir extst_1 --ext extst

#? cr_shgnr_ 1 dir_tst in ${name_fn_}extst/extst_1
${_wrp2_} cd --_xxd ${dir_fns_}/dir_${name_fn_}/${name_fn_}extst/extst_1

${_cr_shgnr_} 1 dir_tst

#! be created cr_tst_dir_ --name "${name_fn_}"tst --ext tst (wrp_fifs1_ cd ${dir_fns_}/dir_${name_fn_}/)
${_wrp2_} cd --_xxd ${dir_fns_}/dir_${name_fn_}

${_cr_tst_dir_} --name_dir "${name_fn_}"tst --ext tst

#* work in extst <<<<<<<<<<

#? cr_shgnr_ 2 dir_sys in nearly ${name_fn_}.sh
${_wrp2_} cd --_xxd ${dir_fns_}/dir_${name_fn_}

${_cr_shgnr_} 2 dir_sys

#* work in _default >>>>>>>>>>
${_wrp2_} cd --_xxd ${dir_fns_}/dir_${name_fn_}/_${name_fn_}/_default

${_cr_sh_} default_deb.sh

file_path=${dir_fns_}/dir_${name_fn_}/_${name_fn_}/_default/default_deb.sh

body=${insert_dir}/_fn_fff_default_deb/body_default_deb.insert

${_cr_f_} ${file_path} --fi0 ${body} --fr0 {body}

#* work in _default >>>>>>>>>>
