#!/bin/bash
#? return 2 => return 0, return 3 => return 1
#{pre}

008_only_clone_nm_opi__set_fn__mul() {

    echo -e "${CYAN}--- 008_only_clone_nm_opi__set_fn__mul() file://${PLT_PATH}/.d/.mul/nm_opi_/set_fn/008_reset_to_head_nm_opi__set_fn__mul.sh ---${NORMAL}" #sistem info mesage
    echo -e "${CYAN}--- MAIN: test add files ---${NORMAL}"                                                                                                 #sistem info mesage
    #{body}

    if ! clone_nm_opi__singl_fn__mul; then
        plt_exit "in 008_only_clone_nm_opi__set_fn__mul() : FAIL_EXEC : clone_nm_opi__singl_fn__mul {with \${name_repo}} = '${name_repo}'} : return 1"
        return 1
    fi

}