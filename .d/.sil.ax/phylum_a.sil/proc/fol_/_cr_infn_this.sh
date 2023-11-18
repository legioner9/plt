#!/bin/bash

root_dir="${PLT_PATH}"/.d/.sil.ax/phylum_a.sil

fol_dir="${PLT_PATH}"/.d/.sil.ax/phylum_a.sil/proc/fol_

plt_pause "multyplay cr infs in ${fol_dir}"

cd ${fol_dir}/03_util_fn || plt_exit "NOT_DIR : ${fol_dir}/03_util_fn"
cr_infn_ --_fn "02_hooks" --_root_dir "${root_dir}"
