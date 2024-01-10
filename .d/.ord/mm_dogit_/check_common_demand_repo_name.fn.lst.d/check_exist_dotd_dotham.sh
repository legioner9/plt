#!/bin/bash

#? USE ${name_repo}

flag_err_check_exist_dotd_dotham=0

if ! [ -f ${REPO_PATH}/${name_repo}/.d/.ham/main/main.ham ]; then
    plt_info "in file:// : FAIL_EXEC : [ -f ${REPO_PATH}/${name_repo}/.d/.ham/main/main.ham ] : flag_err=1"
    flag_err_check_exist_dotd_dotham=1
fi

if ! [ -d ${REPO_PATH}/${name_repo}/.d/.ham/mm_dogit_ ]; then
    plt_info "in file:// : FAIL_EXEC : [ -d ${REPO_PATH}/${name_repo}/.d/.ham/mm_dogit_ ] : flag_err=1"
    flag_err_check_exist_dotd_dotham=1
fi

if [ ${flag_err_check_exist_dotd_dotham} -eq 1 ]; then
    plt_info "in file://${PLT_PATH}/.d/.ord/mm_dogit_/check_common_demand_repo_name.fn.lst.d/check_exist_dotd_dotham.sh : flag_err=1 : return 1"
    return 1
fi
