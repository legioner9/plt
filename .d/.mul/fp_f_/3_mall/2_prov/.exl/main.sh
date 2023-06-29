#!/bin/bash
#! global variables from ARGSP: name_fn_, dir_fns_, flow_

main_d_oll=${PATH_MUL_DIR}/fp_f_/${grad_}/${tail_}/.exl/main.d.oll
ls "${main_d_oll}"
for item in $(ls "${main_d_oll}"); do
    "${_ehh}" . "${main_d_oll}/${item}"
done

${_edit_} "${dir_fns_}/dir_${name_fn_}"

# ${_wrp2_} cd --_xxd ${dir_fns_}/dir_${name_fn_}/_${name_fn_}/_debug/self_tst

# ${_cr_sh_} generate_self_tst_1.sh

# file_path=${dir_fns_}/dir_${name_fn_}/_${name_fn_}/_debug/self_tst/generate_self_tst_1.sh

# body=${insert_dir}/_fn_fff_self_tst_1/body_self_tst_1.insert

# ${_cr_f_} ${file_path} --fi0 ${body} --fr0 {body}

# ${_edit_} "${dir_fns_}/dir_${name_fn_}"

# . ${dir_fns_}/dir_${name_fn_}/_${name_fn_}/_debug/self_tst/generate_self_tst_1.sh
#* work in _debug <<<<<<<<<<

#* work in extst >>>>>>>>>>
${_wrp2_} cd --_xxd ${dir_fns_}/dir_${name_fn_}/

${_wrp2_} mkdir --_cnd ${name_fn_}extst

${_wrp2_} cd --_xxd ${name_fn_}extst

#? cr_tst_sys_
echo -e "${HLIGHT}--- exec: ${_cr_tst_sys_} --name_dir extst_1 --ext extst ---${NORMAL}" #start files
${_cr_tst_sys_} --name_dir extst_1 --ext extst

#? cr_shgnr_ 1 dir_tst in ${name_fn_}extst/extst_1
${_wrp2_} cd --_xxd ${dir_fns_}/dir_${name_fn_}/${name_fn_}extst/extst_1

# ${_cr_shgnr_} 1 dir_tst

#! be created cr_tst_dir_ --name "${name_fn_}"tst --ext tst (wrp_fifs1_ cd ${dir_fns_}/dir_${name_fn_}/)
${_wrp2_} cd --_xxd ${dir_fns_}/dir_${name_fn_}

echo -e "${HLIGHT}--- exec: ${_cr_tst_dir_} --name_dir "${name_fn_}"tst --ext tst ---${NORMAL}" #start files
${_cr_tst_dir_} --name_dir "${name_fn_}"tst --ext tst

#* work in extst <<<<<<<<<<

#? cr_shgnr_ 2 dir_sys in nearly ${name_fn_}.sh
${_wrp2_} cd --_xxd ${dir_fns_}/dir_${name_fn_}

echo -e "${HLIGHT}--- exec: ${_cr_shgnr_} 2 dir_sys ---${NORMAL}" #start files
${_cr_shgnr_} 2 dir_sys

