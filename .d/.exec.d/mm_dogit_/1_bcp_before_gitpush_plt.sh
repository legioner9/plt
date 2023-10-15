#!/bin/bash

#. "${HOME}/.bashrc"
fntmp_31d528dc02() {
    local filename_31d528dc02=${PLT_PATH}/.d/.exec.d/mm_dogit_/1_bcp_before_gitpush_plt.sh

    local ARGS=($@)
    if [ "${ARGS[0]}" == "-h" ]; then
        echo -e "${BLUE} 
help from $filename_31d528dc02 :
1)
${NORMAL}" #sistem info mesage
        return 0
    fi
    NARGS=$#
    local verbose=0
    [[ " ${ARGS[*]} " =~ " -verbose " ]] || verbose=1
    [[ 1 -eq ${verbose} ]] || echo -e "${HLIGHT}---$filename $* ---${NORMAL}" #started functions
    local idir_31d528dc02=$(pwd)
    local rdir_31d528dc02="$(prs_f -d $filename_31d528dc02)"
    local gname_31d528dc02="$(prs_f -n $filename_31d528dc02)" # name without .ext
    #{header}

    #----------------------------------------------------------------------
    #-------------------------------------
    #-------------------------------
    echo -e "${HLIGHT}--- ${_bcp_sys_} -_bcp ---${NORMAL}"
    "${_bcp_sys_}" -_bcp

    arr_name_flash_31d528dc02=(TOSHIBA_EXT TOSH MY_ONE)

    for item_name_flash_31d528dc02 in "${arr_name_flash_31d528dc02[@]}"; do

        if [ -d "/run/media/st/${item_name_flash_31d528dc02}" ]; then
            echo -e "${HLIGHT}--- cp -furv ${PLT_PATH}/.d/.read /run/media/$(whoami)/${item_name_flash_31d528dc02} ---${NORMAL}"
            cp -furv "${PLT_PATH}/.d/.read" "/run/media/$(whoami)/${item_name_flash_31d528dc02}"
        fi

    done
    #{body}
    #-------------------------------
    #-------------------------------------
    #----------------------------------------------------------------------

    cd "$idir"

    unset filename_31d528dc02
}

fntmp_31d528dc02 "$1" "$2" "$3" "$4" "$5" "$6" "$7" "$8"

unset fntmp_31d528dc02
