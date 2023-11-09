#!/bin/bash
rdir_21342355=${PLT_PATH}/.d/.sil.ax/phylum_a.sil/vis
ls ${rdir_21342355}/sh >${rdir_21342355}/ls.lst

: >${rdir_21342355}/ll.lst
for str_645635 in $(cat ${rdir_21342355}/ls.lst); do
    echo $(prs_f -n ${str_645635}) >>${rdir_21342355}/ll.lst
done
