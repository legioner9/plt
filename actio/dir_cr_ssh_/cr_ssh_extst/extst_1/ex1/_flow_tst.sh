#!/bin/bash

#. "$HOME/.bashrc"

filename=${PLT_PATH}/actio/dir_cr_ssh_/cr_ssh_extst/extst_1/ex1/_flow_tst.sh 

# echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file

idir=$(pwd)

cd "$(prs_f -d $filename)" || qq_exit "$(prs_f -d filename) not found"

>res

cr_tst_dir_ < dat &>> res

cd "$idir"

unset filename