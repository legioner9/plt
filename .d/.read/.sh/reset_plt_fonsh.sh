#!/bin/bash

#. "${HOME}/.bashrc"
fntmp_01e37076fa() {
    local filename=${PLT_PATH}/.d/.exec.d/instal_sys/1_reset_plt_fonsh.sh

    local ARGS=($@)
    if [ "${ARGS[0]}" == "-h" ]; then
        echo -e "${BLUE} 
help from $filename :
1)
${NORMAL}" #sistem info mesage
        return 0
    fi
    NARGS=$#
    local verbose=0
    [[ " ${ARGS[*]} " =~ " -verbose " ]] || verbose=1
    [[ 1 -eq ${verbose} ]] || echo -e "${HLIGHT}---$filename $* ---${NORMAL}" #started functions
    local idir=$(pwd)
    local rdir="$(prs_f -d $filename)"
    local gname="$(prs_f -n $filename)" # name without .ext
    #{header}

    #----------------------------------------------------------------------
    #-------------------------------------
    #-------------------------------
    RESET_PLT_FONSH_TO_DEFAULT_=""
    read -p "START RESET_PLT_FONSH_TO_DEFAULT_ block? =================== y/n"
    read RESET_PLT_FONSH_TO_DEFAULT_

    if [[ "${RESET_PLT_FONSH_TO_DEFAULT_}" == "y" ]]; then

        rm -f "$HOME"/.fonsh_path
        rm -f "$HOME"/.plt_path
        rm -f "$HOME"/.repo_path
        rm -rf "$HOME"/REPOBARE

    fi
    #{body}
    #-------------------------------
    #-------------------------------------
    #----------------------------------------------------------------------

    cd "$idir"

    unset filename
}

fntmp_01e37076fa "$1" "$2" "$3" "$4" "$5" "$6" "$7" "$8"

unset fntmp_01e37076fa
