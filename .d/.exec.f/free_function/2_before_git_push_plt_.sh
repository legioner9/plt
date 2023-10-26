#!/bin/bash

#. "${HOME}/.bashrc"
fntmp_65aa85dd34() {
    local filename_65aa85dd34=${PLT_PATH}/.d/.exec.f/free_function/2_before_git_push_plt_.sh

    local ARGS_65aa85dd34=($@)
    if [ "${ARGS_65aa85dd34[0]}" == "-h" ]; then
        echo -e "${BLUE} 
help from $filename_65aa85dd34 :
1)
${NORMAL}" #sistem info mesage
        return 0
    fi
    NARGS_65aa85dd34=$#
    local verbose=0
    [[ " ${ARGS_65aa85dd34[*]} " =~ " -verbose " ]] || verbose=1
    [[ 1 -eq ${verbose} ]] || echo -e "${HLIGHT}---$filename $* ---${NORMAL}" #started functions
    local idir_65aa85dd34=$(pwd)
    local rdir_65aa85dd34="$(prs_f -d $filename_65aa85dd34)"
    local gname_65aa85dd34="$(prs_f -n $filename_65aa85dd34)" # name without .ext
    #{header}

    #----------------------------------------------------------------------
    #-------------------------------------
    #-------------------------------
    PPWD_65aa85dd34="$(pwd)"

    echo -e "${HLIGHT}--- ${_bcp_sys_} -_bcp ---${NORMAL}"
    "${_bcp_sys_}" -_bcp

    arr_name_flash_65aa85dd34=(TOSHIBA_EXT TOSH MY_ONE)

    for item_name_flash_65aa85dd34 in "${arr_name_flash_65aa85dd34[@]}"; do

        if [ -d "/run/media/st/${item_name_flash_65aa85dd34}" ]; then
            echo -e "${HLIGHT}--- cp -furv ${PLT_PATH}/.d/.read /run/media/$(whoami)/${item_name_flash_65aa85dd34} ---${NORMAL}"
            cp -furv "${PLT_PATH}/.d/.read" "/run/media/$(whoami)/${item_name_flash_65aa85dd34}"
        fi

    done
    #{body}
    #-------------------------------
    #-------------------------------------
    #----------------------------------------------------------------------

    cd "$idir_65aa85dd34"

    unset filename_65aa85dd34
}

fntmp_65aa85dd34 "$1" "$2" "$3" "$4" "$5" "$6" "$7" "$8"

unset fntmp_65aa85dd34
