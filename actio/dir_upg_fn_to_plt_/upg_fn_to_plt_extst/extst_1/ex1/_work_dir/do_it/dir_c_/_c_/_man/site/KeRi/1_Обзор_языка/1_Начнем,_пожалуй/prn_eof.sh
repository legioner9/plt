#!/bin/bash

#. "/home/st/.bashrc"

filename="${PATH_MAIN_REPO_FN_DIR}/dir_c_/_c_/_man/site/KeRi/1_Обзор_языка/1_Начнем,_пожалуй/prn_eof.sh" 

echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git ${FUNCNAME[0]}

idir=$(pwd)

cd ${PATH_MAIN_REPO_FN_DIR}/dir_c_/_c_/_man/site/KeRi/1_Обзор_языка/1_Начнем,_пожалуй/res_cpp

./3_prn_eof.bexe < content

cd "$idir"

unset filename