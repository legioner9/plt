#!/bin/bash

file_sh="${REPO_PATH}/${name_repo}"/.d/.ham/main/main.fn.lst.d/exec_act2tst_.sh
file_lst="${REPO_PATH}/${name_repo}"/.d/.ham/main/main.fn.lst.d/exec_act2tst_.lst

echo -e "${BLUE}--- that file://${file_sh} ---${NORMAL}"               #sistem info mesage
echo -e "${HLIGHT}--- arb2tst_() wiwh file://${file_lst} ---${NORMAL}" #start files



if ! [ -f "${file_lst}" ]; then
    plt_info "in file://${file_sh} : NOT_FILE : ' file://${file_lst}' : return 1"
    return 1
fi

if ! act2tst_ "${file_lst}"; then
    plt_info "in file://${file_sh} : FAIL_EXEC : 'act2tst_() wiwh file://${file_lst}' : return 1"
    return 1
fi

return 0