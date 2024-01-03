#!/bin/bash

#? USE ${name_repo}

if ! [ -d ${REPO_PATH}/${name_repo}/.d/.ham/.dd ]; then
    plt_info "in check_common_demand_repo_name.ord : FAIL_EXEC : [ -d ${REPO_PATH}/${name_repo}/.d/.ham/.dd ] : return 1"
    return 1
fi