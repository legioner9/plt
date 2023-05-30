#!/bin/bash

#. "/home/st/.bashrc"

filename="${PATH_MAIN_REPO_FN_DIR}/dir_c_/_c_/_lib/_debug/_deb_num/isdiv_cpjs/build.sh"

echo -e "${HLIGHT}---start file: $filename ---${NORMAL}" # start file

idir=$(pwd)

dir_project=$(prs_f -d $filename)

. $dir_project/compile.sh

cd $dir_project/use/


./main.bexe
 

cd "$idir"