#!/bin/bash

#? USE ${name_repo}

flag_err_check_exist_dotd_dotham=0

if [ ${flag_err_check_exist_dotd_dotham} -eq 1 ]; then
    plt_info "in file://${PLT_PATH}/.d/.ord/mn_opi_/check_common_demand_repo_name.fn.lst.d/check_exist_dotd_dotham.sh : flag_err=1 : return 1"
    return 1
fi

return 0
