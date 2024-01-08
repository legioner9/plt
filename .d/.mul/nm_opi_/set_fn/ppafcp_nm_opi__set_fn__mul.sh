#!/bin/bash
#? return 2 => return 0, return 3 => return 1
#{pre}

ppafcp_nm_opi__set_fn__mul() {

    echo -e "${CYAN}--- ppafcp_nm_opi__set_fn__mul() file://${PLT_PATH}/.d/.mul/nm_opi_/set_fn/ppafcp_nm_opi__set_fn__mul.sh ---${NORMAL}" #sistem info mesage
    echo -e "${CYAN}--- MAIN: ---${NORMAL}"                                                                                                #sistem info mesage
    #{body}

    if ! pull_nm_opi__singl_fn__mul; then
        plt_exit "in carp_nm_opi__set_fn__mul() : FAIL_EXEC : pull_nm_opi__singl_fn__mul {with \${name_repo}} = '${name_repo}'} : return 1"
        return 1
    fi

    # push_nm_opi__singl_fn__mul
    #! nothing_commit global var to gcom_

    nothing_commit=0

    if ! add_file_nm_opi__singl_fn__mul; then
        plt_exit "in carp_nm_opi__set_fn__mul() : FAIL_EXEC : add_file_nm_opi__singl_fn__mul {with \${name_repo}} = '${name_repo}'} : return 1"
        return 1
    fi

    if ! com_nm_opi__singl_fn__mul; then
        plt_exit "in carp_nm_opi__set_fn__mul() : FAIL_EXEC : com_nm_opi__singl_fn__mul {with \${name_repo}} = '${name_repo}'} : return 1"
        return 1
    fi

    if ! push_nm_opi__singl_fn__mul; then
        plt_exit "in carp_nm_opi__set_fn__mul() : FAIL_EXEC : push_nm_opi__singl_fn__mul {with \${name_repo}} = '${name_repo}'} : return 1"
        return 1
    fi

}
