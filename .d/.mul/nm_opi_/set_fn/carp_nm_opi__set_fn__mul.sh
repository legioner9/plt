#!/bin/bash
#? return 2 => return 0, return 3 => return 1
#{pre}

carp_nm_opi__set_fn__mul() {

    echo -e "${CYAN}--- carp_nm_opi__set_fn__mul() file://${PLT_PATH}/.d/.mul/nm_opi_/set_fn/carp_nm_opi__set_fn__mul.sh ---${NORMAL}" #sistem info mesage
    echo -e "${CYAN}--- MAIN: ---${NORMAL}"                                                                                            #sistem info mesage
    #{body}

    # exec block start --------------------------------
    if ! clone_nm_opi__singl_fn__mul; then
        plt_exit "in carp_nm_opi__set_fn__mul() : FAIL_EXEC : clone_nm_opi__singl_fn__mul {with \${name_repo}} = '${name_repo}'} : return 1"
        return 1
    fi

    if ! add_remote_nm_opi__singl_fn__mul; then
        plt_exit "in carp_nm_opi__set_fn__mul() : FAIL_EXEC : add_remote_nm_opi__singl_fn__mul {with \${name_repo}} = '${name_repo}'} : return 1"
        return 1
    fi

    if ! push_nm_opi__singl_fn__mul; then
        plt_exit "in carp_nm_opi__set_fn__mul() : FAIL_EXEC : push_nm_opi__singl_fn__mul {with \${name_repo}} = '${name_repo}'} : return 1"
        return 1
    fi

    # exec block end --------------------------------

}
