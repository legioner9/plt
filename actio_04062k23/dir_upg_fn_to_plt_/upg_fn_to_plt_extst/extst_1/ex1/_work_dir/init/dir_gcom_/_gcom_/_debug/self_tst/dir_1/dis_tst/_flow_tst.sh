#!/bin/bash

#. "$HOME/.bashrc"

filename="/home/st/start/communis/Deploy_store/.qa/main_repo_fn/dir_gcom_/_gcom_/_debug/self_tst/dir_1/dis_tst/_flow_tst.sh" 

# echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file

idir=$(pwd)

cd "$(prs_f -d $filename)" || qq_exit "$(prs_f -d filename) not found"

>res

. deb_1.sh < dat &>> res

cd "$idir"

unset filename