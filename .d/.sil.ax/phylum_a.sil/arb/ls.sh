#!/bin/bash

# ls /home/st/REPOBARE/_repo/plt/.d/.sil.ax/phylum_a.sil/arb/name_ramus.ram >/home/st/REPOBARE/_repo/plt/.d/.sil.ax/phylum_a.sil/arb/ls.lst


rdir_645638789=${PLT_PATH}/.d/.sil.ax/phylum_a.sil/arb
ls ${rdir_645638789}/name_ramus.ram >${rdir_645638789}/ls.lst

: >${rdir_645638789}/ll.lst
for str_8735976 in $(cat ${rdir_645638789}/ls.lst); do
    echo $(prs_f -n ${str_8735976}) >>${rdir_645638789}/ll.lst
done
