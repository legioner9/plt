#!/bin/bash 
#! global variables from ARGSP: name_fn_, dir_fns_, flow_

src_puml_file=${dir_fns_}/dir_${name_fn_}/.d/.sal/${name_fn_}.puml

"${_is_est_}" "${src_puml_file}" -f

${_cr_f_dir_insert_} --name ${src_puml_file} --dir_insert ${insert_dir}/_fn_fff_puml/

${_cr_f_} ${src_puml_file} --vi0 ${name_fn_} --vr0 {name_fn_}

${_upg_path_} ${src_puml_file}