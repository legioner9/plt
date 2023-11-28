#!/bin/bash

#! USE: ${sil_} ${arb_} ${ram_} ${fill_dir} ${tmp_dir} ${dilectus}/

echo -e "${HLIGHT}--- exec 2_cp_tmp_to_ram .sh ---${NORMAL}" #start files

cp -vr ${tmp_dir}/${dilectus}/.proc/_content/to_grot/. ${arb_}/${ram_}.ram/.grot

cat ${tmp_dir}/${dilectus}/.fol/main.fol >${arb_}/${ram_}.ram/main.fol

cat ${tmp_dir}/${dilectus}/.fol/tags.fol >${arb_}/${ram_}.ram/tags.fol

cat ${tmp_dir}/${dilectus}/.fol/cont.fol >${arb_}/${ram_}.ram/cont.fol

"${_cr_f_}" ${arb_}/${ram_}.ram/main.fol --vi0 ${ram_} --vr0 {ram_}

"${_cr_f_}" ${arb_}/${ram_}.ram/.grot/this.man --vi0 ${ram_} --vr0 {ram_}
