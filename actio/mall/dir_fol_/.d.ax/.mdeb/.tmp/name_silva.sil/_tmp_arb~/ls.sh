#!/bin/bash

# ls /home/st/REPOBARE/_repo/plt/.d/.sil.ax/phylum_a.sil/arb/name_ramus.ram >/home/st/REPOBARE/_repo/plt/.d/.sil.ax/phylum_a.sil/arb/ls.lst


rdir_arb=${sil_}/arb
ls ${rdir_arb}/name_ramus.ram >${rdir_arb}/ls.lst

: >${rdir_arb}/ll.lst
for str4 in $(cat ${rdir_arb}/ls.lst); do
    echo $(prs_f -n ${str4}) >>${rdir_arb}/ll.lst
done
