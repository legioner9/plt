#!/bin/bash

#. "/home/st/.bashrc"

filename="${PATH_MAIN_REPO_FN_DIR}/dir_c_/_c_/_man/functions/any_examp_pj_tkh_video/arr_2d_dinamic_cpjs/exec.sh"

echo -e "${HLIGHT}---start file: $filename ---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git ${FUNCNAME[0]}
# echo "PD0 = $(pwd)"
PD="$(prs_f -d "$filename")"

c_to_h_ -u

c_src=${PATH_MAIN_REPO_FN_DIR}/dir_c_/_c_/_lib/lc_0.c
c_dist=$PD/lib/lc_0.c

if [ "$c_dist" -ot "$c_src" ]; then

    cp -u $(prs_f -d "$c_src")/*.* "$PD"/lib/

fi

cd "$PD" || qq_exit
make -f auto.mk
echo -e "${RED}--- start main.bexe ---${NORMAL}" #sistem info mesage
./main.bexe
echo -e "${RED}--- end main.bexe ---${NORMAL}" #sistem info mesage
# make -f auto.mk clear

unset filename
