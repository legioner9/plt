#!/bin/bash

#. "$HOME/.bashrc"

filename="$HOME/start/communis/Deploy_store/.qa/main_repo_fn/dir_c_/_c_/_man/site/KeRi/1_Обзор_языка/13_Символьные_массивы/prn_longer_str.sh" 

echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file

idir=$(pwd)

cd /home/st/start/communis/Deploy_store/.qa/main_repo_fn/dir_c_/_c_/_man/site/KeRi/1_Обзор_языка/13_Символьные_массивы/prn_longer_str.sh

./prn_longer_str.bexe < content_longer_str

cd "$idir"

unset filename