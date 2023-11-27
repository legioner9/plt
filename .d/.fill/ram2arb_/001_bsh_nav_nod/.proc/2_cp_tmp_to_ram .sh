#!/bin/bash

#! USE: ${sil_} ${arb_} ${ram_} ${fill_dir} ${tmp_dir} ${dilectus}/

echo -e "${HLIGHT}--- exec 2_cp_tmp_to_ram .sh ---${NORMAL}" #start files

cp -vr ${tmp_dir}/${dilectus}/.proc/_content/to_grot/. ${arb_}/${ram_}.ram/.grot

${_f2e} ${tmp_dir}/${dilectus}/.fol/main.fol >${arb_}/${ram_}.ram/main.fol

${_f2e} ${tmp_dir}/${dilectus}/.fol/tags.fol >${arb_}/${ram_}.ram/tags.fol

"${_cr_f_}" ${arb_}/${ram_}.ram/main.fol --vi0 ${ram_} --vr0 {ram_}
