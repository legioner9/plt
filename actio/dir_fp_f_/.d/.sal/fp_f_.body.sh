#!/bin/bash

if typeset -F | grep -w ${name_fn_}; then
    ${_plt_exit} " not unique --_name_fn: ${name_fn_} "
    return 1
fi

if [ -d ${dir_fns_} ]; then
    cd ${dir_fns_}
else
    ${_plt_exit} " not exist dir --_dir_fns: ${dir_fns_} "
    return 1
fi

# if ! is_num ${flow_}; then
#     plt_exit " not a number --_dir_fns: ${flow_} "
#     return 1
# fi

#? --_grad (1_prim|2_secu|3_mall|4_raqu|5_ague) --_tail (1_veri|2_prov|3_absc|...)
#! far up name from fs: using number menu or name dir

# . ${PLT_PATH}/.d/.mul/fp_f_/${grad_}/env/flow_env.sh
# ${_exl_} --_exl_list ${PLT_PATH}/.d/.mul/fp_f_/3_mall/cir.ax/out.cir
"${_ehh}" . "${PLT_PATH}/.d/.mul/fp_f_/${grad_}/cir.ax/out.cir"


${_plt_pause} "(${name_fn_}) create grad=${grad_} tail=${tail_}  !!! in ($PWD/dir_${name_fn_}/) ?"

# exl_ --list "${exl_file}"
# echo | . ${sh_file}

"${_ehh}" . ${main_sh}
# "${_exl_}" --_exl_list "${main_sh}"
