#!/bin/bash

src_puml_file=${dir_fns_}/dir_${name_fn_}/${name_fn_}.puml

is_est_ "${src_puml_file}" -f

cr_f_dir_insert_ --name ${src_puml_file} --dir_insert ${insert_dir}/_fn_fff_puml/