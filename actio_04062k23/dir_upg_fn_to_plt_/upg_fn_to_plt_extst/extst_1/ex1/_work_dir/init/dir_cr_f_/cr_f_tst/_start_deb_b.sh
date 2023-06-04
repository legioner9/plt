#!/bin/bash

#. "/home/st/.bashrc"

filename="${PATH_MAIN_REPO_FN_DIR}/dir_cr_f_/cr_f_tst/_start_deb_b.sh" 

echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file

idir=$(pwd)

cd "$(prs_f -d $filename)" || qq_exit "$(prs_f -d $filename) not found"


garg_ $(prs_f -n $filename) $@ 1>/dev/null

# rr_

rm b

cr_f_ $(prs_f -d $filename)/b --vi0 weqwe999 --tml $(prs_f -d $filename)/tml_b --fi0 $(prs_f -d $filename)/into_b

cd "$idir"

unset filename