#!/bin/bash

#. "$HOME/.bashrc"

filename="$HOME/start/communis/Deploy_store/.qa/main_repo_fn/dir_c_/_c_/_man/site/KeRi/1_Обзор_языка/1_Начнем,_пожалуй/word_as_line.sh" 

echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file

idir=$(pwd)

cd /home/st/start/communis/Deploy_store/.qa/main_repo_fn/dir_c_/_c_/_man/site/KeRi/1_Обзор_языка/1_Начнем,_пожалуй/res_cpp

./6_word_as_line.bexe < content_word_as_line > res

cd "$idir"

unset filename