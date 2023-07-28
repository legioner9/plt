#!/bin/bash

#! ln -s ${PATH_SAL_AX_DIR}/${name_fn_}.ln  ${_dotd_dir_sal}/${name_fn_}.body.nsc.sh

fn_body_ln=${PATH_SAL_AX_DIR}/${name_fn_}.sal
echo -e "${GREEN}\$fn_body_ln = $fn_body_ln${NORMAL}" #print variable

fn_body_sh=${_dotd_dir_sal}/${name_fn_}.body.nsc.sh
echo -e "${GREEN}\$fn_body_sh = $fn_body_sh${NORMAL}" #print variable

tml_dir=${PLT_PATH}/.d/.mul/fp_f_/${grad_}/${tail_}/.tml
echo -e "${GREEN}\$tml_dir = $tml_dir${NORMAL}" #print variable

read -p "----------continue with that pram?---------------"

if [ -f "${fn_body_ln}" ]; then
    if plt_is_ques "delit file ${fn_body_ln}?"; then

        "${_ehh}" rm -v ${fn_body_ln}

        "${_ehh}" cp -rfv "${tml_dir}/file.body.sh" "${fn_body_ln}"

        "${_ehh}" "${_cr_f_}" "${fn_body_ln}" --vi0 ${name_fn_} --vr0 {name_fn_}
    fi
else
    "${_ehh}" cp -rfv "${tml_dir}/file.body.sh" "${fn_body_ln}"

    "${_ehh}" "${_cr_f_}" "${fn_body_ln}" --vi0 ${name_fn_} --vr0 {name_fn_}

fi

if ! "${_wrp2_}" ln -sv --_xxf "${fn_body_ln}" --_xne "${fn_body_sh}"; then
    "${_plt_exit}" "ln -sv --_xxf ${fn_body_ln} --_xne ${fn_body_sh}"
fi
