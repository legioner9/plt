#!/bin/bash

src_fn_file=${PWD}/dir_${name_fn_}/${name_fn_}.ax.sh

${_is_est_} ${src_fn_file} -f

${_cr_f_dir_insert_} --name ${src_fn_file} --dir_insert ${insert_dir}/_fn_fff_sh/1

${_cr_f_dir_insert_} --name ${src_fn_file} --dir_insert ${insert_dir}/_fn_fff_sh/2

# name_fn_
${_cr_f_} ${src_fn_file} --vi0 ${name_fn_} --vr0 {name_fn_}

# dir_fns_
${_cr_f_} ${src_fn_file} --vi0 ${dir_fns_} --vr0 {dir_fns_}

${_upg_path_} ${src_fn_file}
