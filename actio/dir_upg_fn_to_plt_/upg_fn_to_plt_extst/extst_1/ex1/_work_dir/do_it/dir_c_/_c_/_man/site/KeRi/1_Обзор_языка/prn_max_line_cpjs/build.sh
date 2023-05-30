#!/bin/bash

#. "/home/st/.bashrc"

filename="${PATH_MAIN_REPO_FN_DIR}/dir_c_/_c_/_man/site/KeRi/1_Обзор_языка/prn_max_line_cpjs/exec.sh"

echo -e "${HLIGHT}---start file: $filename ---${NORMAL}" # start file

idir=$(pwd)

#
. ${PATH_MAIN_REPO_FN_DIR}/dir_c_/_c_/_man/site/KeRi/1_Обзор_языка/prn_max_line_cpjs/compile.sh
cd ${PATH_MAIN_REPO_FN_DIR}/dir_c_/_c_/_man/site/KeRi/1_Обзор_языка/prn_max_line_cpjs/use
./main.bexe < content > res

cd "$idir"