#!/bin/bash

#! inner procedure IFS for ${PLT_PATH}/.d/.sal.ax/fol_/fol_.sal
#! local var {rdir_vis} {str3}
#! {arb_} full path to arb dir with .ram files {sil_} full path to sil dir with arbs
rdir_vis=${sil_}/vis

ls ${rdir_vis}/sh >${rdir_vis}/ls.lst

: >${rdir_vis}/ll.lst
for str3 in $(cat ${rdir_vis}/ls.lst); do
    echo "$(prs_f -n ${str3})" >>${rdir_vis}/ll.lst
done
