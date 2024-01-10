#!/bin/bash

#? USE ${name_repo}

flag_err_check_exist_dotd_dotham=0

arr_dir=(main ham sh)

unset item

if [ -d ${REPO_PATH}/${name_repo} ]; then

    for item in ${arr_dir[@]}; do

        if ! [ -d ${REPO_PATH}/${name_repo}/.d/.ham/${item} ]; then

            mkdir -p ${REPO_PATH}/${name_repo}/.d/.ham

            cp -rfv ${PLT_PATH}/.d/.fs_standarts.ax/git_repo_init/.d/.ham/${item} ${REPO_PATH}/${name_repo}/.d/.ham

            if ! [ -d ${REPO_PATH}/${name_repo}/.d/.ham/${item} ]; then
                plt_info "in file:// : FAIL_EXEC : [ -f ${REPO_PATH}/${name_repo}/.d/.ham/main/main.ham ] : flag_err=1"
                flag_err_check_exist_dotd_dotham=1
            fi
        fi

    done

fi

# if ! [ -d ${REPO_PATH}/${name_repo}/.d/.ham/ham ]; then
#     plt_info "in file:// : FAIL_EXEC : [ -d ${REPO_PATH}/${name_repo}/.d/.ham/ham ] : flag_err=1"
#     flag_err_check_exist_dotd_dotham=1
# fi

if [ ${flag_err_check_exist_dotd_dotham} -eq 1 ]; then
    plt_info "in file://${PLT_PATH}/.d/.ord/mn_opi_/check_common_demand_repo_name.fn.lst.d/check_exist_dotd_dotham.sh : flag_err=1 : return 1"
    return 1
fi
