#!/bin/bash

cd /home/st/REPOBARE/_repo/plt/.d/.infn/nit_ || {
    plt_exit "EXEC_FAIL: cd /home/st/REPOBARE/_repo/plt/.d/.infn/nit_ return 1"
    return 1
}

root_dir=${PLT_PATH}
par_dir=${root_dir}/.d/nit_


# cr_infn_ --_fn "E" --_root_dir "${root_dir}" --_par_dir "${par_dir}"
# cr_infn_ --_fn "crram" --_root_dir "${root_dir}" --_par_dir "${par_dir}"
# cr_infn_ --_fn "delram" --_root_dir "${root_dir}" --_par_dir "${par_dir}"
# cr_infn_ --_fn "crtag" --_root_dir "${root_dir}" --_par_dir "${par_dir}"
# cr_infn_ --_fn "addtag" --_root_dir "${root_dir}" --_par_dir "${par_dir}"
# cr_infn_ --_fn "deltag" --_root_dir "${root_dir}" --_par_dir "${par_dir}"
# cr_infn_ --_fn "utag" --_root_dir "${root_dir}" --_par_dir "${par_dir}"

# cr_infn_ --_fn "editarb" --_root_dir "${root_dir}" --_par_dir "${par_dir}"
cr_infn_ --_fn "arb" --_root_dir "${root_dir}" --_par_dir "${par_dir}"
cr_infn_ --_fn "dir" --_root_dir "${root_dir}" --_par_dir "${par_dir}"

