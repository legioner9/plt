#!/bin/bash

#. "${HOME}/.bashrc"
fntmp_b0ff6094eb() {
    local filename_b0ff6094eb=${PLT_PATH}/.d/.exec.f/free_function/1_cr_fs_min_git_system_repo_bare_.sh

    local ARGS_b0ff6094eb=($@)
    if [ "${ARGS_b0ff6094eb[0]}" == "-h" ]; then
        echo -e "${BLUE} 
help from $filename :
1)
${NORMAL}" #sistem info mesage
        return 0
    fi
    NARGS_b0ff6094eb=$#
    local verbose=0
    [[ " ${ARGS_b0ff6094eb[*]} " =~ " -verbose " ]] || verbose=1
    [[ 1 -eq ${verbose} ]] || echo -e "${HLIGHT}---$filename_b0ff6094eb $* ---${NORMAL}" #started functions
    local idir_b0ff6094eb=$(pwd)
    local rdir_b0ff6094eb="$(prs_f -d $filename_b0ff6094eb)"
    local gname_b0ff6094eb="$(prs_f -n $filename_b0ff6094eb)" # name without .ext
    #{header}

    #----------------------------------------------------------------------
    #-------------------------------------
    #-------------------------------
    echo -e "${BLUE}--- that ${filename_b0ff6094eb} ---${NORMAL}" #start files
    #{body}
    #-------------------------------
    #-------------------------------------
    #----------------------------------------------------------------------

    cd "$idir_b0ff6094eb"

    unset filename
}

fntmp_b0ff6094eb "$1" "$2" "$3" "$4" "$5" "$6" "$7" "$8"

unset fntmp_b0ff6094eb
