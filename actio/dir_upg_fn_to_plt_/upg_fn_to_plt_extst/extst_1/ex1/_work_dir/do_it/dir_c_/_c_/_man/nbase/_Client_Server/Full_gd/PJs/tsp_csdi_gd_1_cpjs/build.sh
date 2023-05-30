#!/bin/bash

#. "$HOME/.bashrc"

filename="/home/st/start/communis/Deploy_store/.qa/main_repo_fn/dir_c_/_c_/_man/nbase/_Client_Server/Full_gd/PJs/tsp_csdi_gd_1_cpjs/exec.sh"

echo -e "${HLIGHT}---start file: $filename ---${NORMAL}" # start file

#dir="$(prs_f -d $filename)"

dir="$(prs_f -d $filename)"

cd "$dir" || qq_exit

rm use/server.bexe use/client.bexe



cp main.server._c main.c
. exec.sh
cd ..
echo -e "${BLUE}--- mv use/main.bexe server.bexe ---${NORMAL}" #sistem info mesage
mv use/main.bexe use/server.bexe

cd "$dir" || qq_exit
cp main.client._c main.c
. exec.sh
cd ..
echo -e "${BLUE}--- mv use/main.bexe client.bexe ---${NORMAL}" #sistem info mesage
mv use/main.bexe use/client.bexe

cd use/

# echo -e "${BLUE}--- ./server.bexe& ---${NORMAL}" #sistem info mesage
# ./server.bexe&
# echo -e "${BLUE}--- USE for result ./client.bexe (int) (int) ---${NORMAL}" #sistem info mesage
# echo -e "${BLUE}--- USE for shotdown server ./client.bexe DOWN ---${NORMAL}" #sistem info mesage
unset filename