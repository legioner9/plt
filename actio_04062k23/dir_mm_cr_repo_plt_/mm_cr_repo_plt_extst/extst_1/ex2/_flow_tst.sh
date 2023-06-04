#!/bin/bash

#. "$HOME/.bashrc"

filename=${PLT_PATH}/actio/dir_mm_cr_repo_plt_/mm_cr_repo_plt_extst/extst_1/ex2/_flow_tst.sh 

# echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file

idir=$(pwd)

cd "$(prs_f -d $filename)" || qq_exit "$(prs_f -d filename) not found"

>res

cr_tst_dir_ < dat &>> res

cd "$idir"

unset filename