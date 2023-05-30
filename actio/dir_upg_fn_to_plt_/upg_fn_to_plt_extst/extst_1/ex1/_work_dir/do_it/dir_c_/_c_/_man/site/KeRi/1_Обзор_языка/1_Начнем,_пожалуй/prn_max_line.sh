#!/bin/bash

#. "/home/st/.bashrc"

filename="${PATH_MAIN_REPO_FN_DIR}/dir_c_/_c_/_man/site/KeRi/1_Обзор_языка/1_Начнем,_пожалуй/prn_max_line.sh" 

echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file

idir=$(pwd)

cd ${PATH_MAIN_REPO_FN_DIR}/dir_c_/_c_/_man/site/KeRi/1_Обзор_языка/1_Начнем,_пожалуй/res_cpp

./12_prn_max_line.bexe < content_prn_max_line

cd "$idir"

unset filename