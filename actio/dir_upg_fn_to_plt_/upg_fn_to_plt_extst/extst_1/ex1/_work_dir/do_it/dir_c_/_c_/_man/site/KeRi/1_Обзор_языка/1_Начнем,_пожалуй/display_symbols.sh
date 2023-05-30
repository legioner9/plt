#!/bin/bash

#. "/home/st/.bashrc"

filename="${PATH_MAIN_REPO_FN_DIR}/dir_c_/_c_/_man/site/KeRi/1_Обзор_языка/1_Начнем,_пожалуй/display_symbols.sh"

echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file

idir=$(pwd)

cd ${PATH_MAIN_REPO_FN_DIR}/dir_c_/_c_/_man/site/KeRi/1_Обзор_языка/1_Начнем,_пожалуй/res_cpp

./prn_backspace.bexe
echo
./prn_backspace.bexe | ./9_display_symbols.bexe

cd "$idir"

unset filename
