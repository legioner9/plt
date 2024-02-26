#!/bin/bash

#. "$HOME/.bashrc"

filename="${COMMUNIS_PATH}/Deploy_store/.qa/lib/stl/_tst/pre-push_/debug_pre-push.sh"

echo -e "${HLIGHT}---start file: $filename ---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git ${FUNCNAME[0]}

bsh_() {
    . "$HOME"/.bashrc
}

bsh_ 1>/dev/null

# echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

# git_pre_push_bck_hooks



arr_dir_for_check_all_tst=()
# arr_dir_for_check_all_tst=()
arr_dir_for_check_all_tst+=(${COMMUNIS_PATH}/Deploy_store/.qa)                # protected "." dir for tst
arr_dir_for_check_all_tst+=(${COMMUNIS_PATH}/Deploy_store/.qa/lib/_stl_tmp_4) # protected "_" dir for tst
# arr_dir_for_check_all_tst+=(${COMMUNIS_PATH}/Deploy_store)

# check_all_tst_arr

if [ "$(check_all_tst_arr)" ]; then
    echo -e "${BLUE}---INIT0 patch with EXIT 0---${NORMAL}" #sistem info mesage
    # exit 0
else
    echo -e "${RED}---INIT0 patch with EXIT 1---${NORMAL}" #sistem info mesage
    # exit 1
fi


unset filename