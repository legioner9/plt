#!/bin/bash

#. "$HOME/.bashrc"

filename="${COMMUNIS_PATH}/Deploy_store/.qa/lib/user/_abs_path_v2_deb.sh"

echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file

idir=$(pwd)

# cd "$(prs_f -d $filename)" || qq_exit "$(prs_f -d $filename) not found"

# garg_ $(prs_f -n $filename) $@ 1>/dev/null

_abs_path_v2_deb() {
    # echo -e "${CYAN}--- ${FUNCNAME[0]}() $* ---${NORMAL}" #started functions

    local FNN=${FUNCNAME[0]}
    local ARGS=($@)
    local NARGS=$#

    garg_ ${FNN} $@ 1>/dev/null

    d_name=$(dirname ${COMMUNIS_PATH}/Deploy_store/.qa/lib/user/_abs_path_v2_deb.sh)

    if [ "-h" == "$1" ]; then
        echo -e "${CYAN} ${FNN}() help: 
            MAIN:  echo \${\$2} if \${\$2} is_root , else \$1/\${\$2} 
            NAME: ${FNN}()
            ARGS: 
            \$1 mast be $(pwd)
            \$2 path
            FLOW:
                abs_path \$(pwd) \$path
            ${NORMAL}"
        return 0
    fi

    if [ "_man" == "$1" ]; then
        edit_ "$d_name/FNN".man
        return 0
    fi

    if [ "_go" == "$1" ]; then
        edit_ "$d_name/FNN".sh
        return 0
    fi

    if [ "_lst" == "$1" ]; then
        edit_ "$d_name/FNN".lst
        return 0
    fi

    if [ "_test" == "$1" ]; then
        FNNtest
        return 0
    fi

    # echo -e "${BLUE}--- is_amount_arg ${NARGS} 1 2 ---${NORMAL}" #sistem info mesage

    if ! is_amount_arg ${NARGS} 1 2; then
        plt_exit "is_amount_arg:: be return 1 <- Fail: ${FNN}"
        return 1
    fi

    #------------------------------------------------------------------
    #-----------------------------------
    local dpwd="$1"

    echo -e "${GREEN}\$2 = $2${NORMAL}" #print variable
    eval local p_2=\$$2
    echo -e "${GREEN}\$p_2 = $p_2${NORMAL}" #print variable

    if [ -z "$2" ] || [ -z "${p_2}" ]; then
        echo "${dpwd}"
        return 0
    fi

    eval arg2=\${$2}

    if is_root "${dpwd}"; then

        if is_root "${arg2}"; then
            echo ${arg2}
        else
            echo ${dpwd}/${arg2}
        fi

    else
        plt_exit "in abs_path_v2 : NOT_ROOT_DIR : '${dpwd}' return 1"
        return 1
    fi

    #-----------------------------------
    #------------------------------------------------------------------

}

cd "$idir"

unset filename
