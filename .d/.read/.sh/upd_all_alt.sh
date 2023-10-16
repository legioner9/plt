#!/bin/bash

#. "${HOME}/.bashrc"
fntmp_9be697f542() {
    local filename=${PLT_PATH}/.d/.exec.d/instal_sys/upd_all_alt.sh
    REPOBARE/_repo/plt/.d/.read/.sh/reset_plt_fonsh.sh

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
    sudo epm full-upgrade --auto -y
    sudo epm autoremove -y
    sudo epm autoremove --direct
    sudo apt-get install apt-repo apt rpm vim-X11 node python gcc++ wget make gitk git git-gui mate-default -y

    sudo epm ei -y

    sudo epm play yandex-browser -y
    sudo epm play yandex-disk -y
    #{body}
    #-------------------------------
    #-------------------------------------
    #----------------------------------------------------------------------

    cd "$idir"

    unset filename
}

fntmp_9be697f542 "$1" "$2" "$3" "$4" "$5" "$6" "$7" "$8"

unset fntmp_9be697f542
