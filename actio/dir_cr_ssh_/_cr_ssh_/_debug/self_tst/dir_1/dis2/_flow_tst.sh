#!/bin/bash

#. "$HOME/.bashrc"

filename=${PLT_PATH}/actio/dir_cr_ssh_/_cr_ssh_/_debug/self_tst/dir_1/dis2/_flow_tst.sh 

# echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file

idir=$(pwd)

cd "$(prs_f -d $filename)" || qq_exit "$(prs_f -d filename) not found"

>res

cr_tst_dir_ < dat &>> res

cd "$idir"

unset filename