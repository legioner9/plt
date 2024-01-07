#!/bin/bash
#? return 2 => return 0, return 3 => return 1
#{pre}

carp_nm_opi__set_fn__mul() {

    echo -e "${CYAN}--- carp_nm_opi__set_fn__mul() file://${PLT_PATH}/.d/.mul/nm_opi_/set_fn/carp_nm_opi__set_fn__mul.sh ---${NORMAL}" #sistem info mesage
    echo -e "${CYAN}--- MAIN: ---${NORMAL}"                                                                                            #sistem info mesage
    #{body}

    # exec block start --------------------------------
    clone_nm_opi__singl_fn__mul
    add_remote_nm_opi__singl_fn__mul
    push_nm_opi__singl_fn__mul
    # exec block end --------------------------------

}
