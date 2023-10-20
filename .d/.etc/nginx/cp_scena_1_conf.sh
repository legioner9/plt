#!/bin/bash

#. "${HOME}/.bashrc"
fntmp_865dc476f0() {
    local filename=${PLT_PATH}/.d/.etc/nginx/cp_scena_1_conf.sh

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

    sudo cp -v ${PLT_PATH}/.d/.etc/nginx/sites-available.d/scena_1.conf /etc/nginx/sites-available.d/scena_1.conf
    sudo ln -sv /etc/nginx/sites-available.d/scena_1.conf /etc/nginx/sites-enabled.d/scena_1.conf
    
    #{body}
    #-------------------------------
    #-------------------------------------
    #----------------------------------------------------------------------

    cd "$idir"

    unset filename
}

fntmp_865dc476f0 "$1" "$2" "$3" "$4" "$5" "$6" "$7" "$8"

unset fntmp_865dc476f0
