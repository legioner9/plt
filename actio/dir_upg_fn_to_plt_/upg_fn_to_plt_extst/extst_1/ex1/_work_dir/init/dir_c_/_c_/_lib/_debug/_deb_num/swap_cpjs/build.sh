#!/bin/bash

#. "$HOME/.bashrc"

filename="/home/st/start/communis/Deploy_store/.qa/main_repo_fn/dir_c_/_c_/_lib/_debug/_deb_num/swap_cpjs/build.sh"

echo -e "${HLIGHT}---start file: $filename ---${NORMAL}" # start file

idir=$(pwd)

dir_project=$(prs_f -d $filename)

. $dir_project/compile.sh

cd $dir_project/use/


./main.bexe
 

cd "$idir"