#!/bin/bash

#! ln -s ${PATH_SAL_AX_DIR}/${name_fn_}.ln  ${_dotd_dir_sal}/${name_fn_}.body.nsc.sh

"${_ehh}" mkdir ${PATH_SAL_AX_DIR}/${name_fn_}

tml_dir=${PLT_PATH}/.d/.mul/${_gig_f_}/${grad_}/${tail_}/.tml
echo -e "${GREEN}\$tml_dir = $tml_dir${NORMAL}" #print variable

#

fn_body_ln=${PATH_SAL_AX_DIR}/${name_fn_}/${name_fn_}.sal
echo -e "${GREEN}\$fn_body_ln = $fn_body_ln${NORMAL}" #print variable

fn_body_sh=${_dotd_dir_sal}/${name_fn_}.body.nsc.sh
echo -e "${GREEN}\$fn_body_sh = $fn_body_sh${NORMAL}" #print variable

read -p "----------continue with that pram?---------------"

if [ -f "${fn_body_ln}" ]; then
    if plt_is_ques "delit file ${fn_body_ln}?"; then
echo 1
        "${_ehh}" rm -v ${fn_body_ln}

        "${_ehh}" cp -rfv "${tml_dir}/file.body.sh" "${fn_body_ln}"

        "${_ehh}" "${_cr_f_}" "${fn_body_ln}" --vi0 ${name_fn_} --vr0 {name_fn_}
    fi
else
echo 2
    "${_ehh}" cp -rfv "${tml_dir}/file.body.sh" "${fn_body_ln}"

    "${_ehh}" "${_cr_f_}" "${fn_body_ln}" --vi0 ${name_fn_} --vr0 {name_fn_}

fi

if ! "${_ehh}" ln -sv "${fn_body_ln}" "${fn_body_sh}"; then
    "${_plt_exit}" "ln -sv ${fn_body_ln} ${fn_body_sh}"
fi

#? file.local.list

fn_body_ln=${PATH_SAL_AX_DIR}/${name_fn_}/${name_fn_}.local
echo -e "${GREEN}\$fn_body_ln = $fn_body_ln${NORMAL}" #print variable

fn_body_list=${_dotd_dir_sal}/${name_fn_}.local.list
echo -e "${GREEN}\$fn_body_sh = $fn_body_sh${NORMAL}" #print variable

read -p "----------continue with that pram?---------------"

if [ -f "${fn_body_ln}" ]; then
    if plt_is_ques "delit file ${fn_body_ln}?"; then
echo 3
        "${_ehh}" rm -v ${fn_body_ln}

        "${_ehh}" cp -rfv "${tml_dir}/file.local.list" "${fn_body_ln}"

        "${_ehh}" "${_cr_f_}" "${fn_body_ln}" --vi0 ${name_fn_} --vr0 {name_fn_}
    fi
else
echo 4
    "${_ehh}" cp -rfv "${tml_dir}/file.local.list" "${fn_body_ln}"

    "${_ehh}" "${_cr_f_}" "${fn_body_ln}" --vi0 ${name_fn_} --vr0 {name_fn_}

fi

if ! "${_ehh}" ln -sv "${fn_body_ln}" "${fn_body_list}"; then
    "${_plt_exit}" "ln -sv ${fn_body_ln} ${fn_body_list}"
fi

#? file.local.list -> file.h.sh

fn_h_tml=${PATH_NID_DIR}/${grad_}/${grad_}.h
echo -e "${GREEN}\$fn_h_tml = $fn_h_tml${NORMAL}" #print variable

fn_body_ln=${PATH_SAL_AX_DIR}/${name_fn_}/${name_fn_}.h
echo -e "${GREEN}\$fn_body_ln = $fn_body_ln${NORMAL}" #print variable

fn_body_list=${_dotd_dir_sal}/${name_fn_}.h.sh
echo -e "${GREEN}\$fn_body_list = $fn_body_list${NORMAL}" #print variable

read -p "----------continue with that pram?---------------"

if [ -f "${fn_body_ln}" ]; then
    if plt_is_ques "delit file ${fn_body_ln}?"; then
echo 5
        "${_ehh}" rm -v ${fn_body_ln}

        "${_ehh}" cp -rfv "${fn_h_tml}" "${fn_body_ln}"

        "${_ehh}" "${_cr_f_}" "${fn_body_ln}" --vi0 ${name_fn_} --vr0 {name_fn_}
    fi
else
echo 6
    "${_ehh}" cp -rfv "${fn_h_tml}" "${fn_body_ln}"

    "${_ehh}" "${_cr_f_}" "${fn_body_ln}" --vi0 ${name_fn_} --vr0 {name_fn_}

fi

if ! "${_ehh}" ln -sv "${fn_body_ln}" "${fn_body_list}"; then
    "${_plt_exit}" "ln -sv ${fn_body_ln} ${fn_body_list}"
fi


#? dir h

fn_dir_h_tml=${PATH_NID_DIR}/${grad_}/${grad_}.d.h
echo -e "${GREEN}\$fn_dir_h_tml = $fn_dir_h_tml${NORMAL}" #print variable

fn_dir_h_ln=${PATH_SAL_AX_DIR}/${name_fn_}/${name_fn_}.d.h
echo -e "${GREEN}\$fn_dir_h_ln = $fn_dir_h_ln${NORMAL}" #print variable

fn_dir_h_in=${_dotd_dir_sal}/${name_fn_}.d.h
echo -e "${GREEN}\$fn_dir_h_in = $fn_dir_h_in${NORMAL}" #print variable

read -p "----------continue with that pram?---------------"

if [ -d "${fn_dir_h_ln}" ]; then
    if plt_is_ques "delit dir ${fn_dir_h_ln}?"; then
echo 7
        "${_ehh}" rm -v ${fn_dir_h_ln}

        "${_ehh}" cp -rfv "${fn_dir_h_tml}" "${fn_dir_h_ln}"

        # "${_ehh}" "${_cr_f_}" "${fn_body_ln}" --vi0 ${name_fn_} --vr0 {name_fn_}
    fi
else
echo 8
    "${_ehh}" cp -rfv "${fn_dir_h_tml}" "${fn_dir_h_ln}"

    # "${_ehh}" "${_cr_f_}" "${fn_body_ln}" --vi0 ${name_fn_} --vr0 {name_fn_}

fi

if ! "${_ehh}" ln -sv "${fn_dir_h_ln}" "${fn_dir_h_in}"; then
    "${_plt_exit}" "ln -sv ${fn_dir_h_ln} ${fn_dir_h_in}"
fi

