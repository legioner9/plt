#!/bin/bash

#. "$HOME/.bashrc"

filename="$PATH_FN/dir_cr_tst_dir_/cr_tst_dir_tst/_flow_tst.sh" 

# echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file

idir=$(pwd)

cd "$(prs_f -d $filename)" || qq_exit "$(prs_f -d filename) not found"

>res

cr_tst_dir_ < dat &>> res

cd "$idir"

unset filename