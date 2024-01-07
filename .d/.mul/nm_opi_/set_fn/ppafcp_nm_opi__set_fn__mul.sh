#!/bin/bash
#? return 2 => return 0, return 3 => return 1
#{pre}

ppafcp_nm_opi__set_fn__mul() {

    echo -e "${CYAN}--- ppafcp_nm_opi__set_fn__mul() file://${PLT_PATH}/.d/.mul/nm_opi_/set_fn/ppafcp_nm_opi__set_fn__mul.sh ---${NORMAL}" #sistem info mesage
    echo -e "${CYAN}--- MAIN: ---${NORMAL}"                                                                                                #sistem info mesage
    #{body}

    # exec block start --------------------------------

    pull_nm_opi__singl_fn__mul 
    push_nm_opi__singl_fn__mul 

    #! nothing_commit global var to gcom_
    nothing_commit=0
    add_file_nm_opi__singl_fn__mul 

    com_nm_opi__singl_fn__mul 

    push_nm_opi__singl_fn__mul 
    # exec block end --------------------------------

    # END EXL FILE >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

}
