#!/bin/bash

#. "${HOME}/.bashrc"
fntmp_222da48517() {
    local filename_222da48517=${PLT_PATH}/.d/.exec.d/mm_dogit_/2_dpl_after_pull_plt.sh

    local ARGS=($@)
    if [ "${ARGS[0]}" == "-h" ]; then
        echo -e "${BLUE} 
help from $filename_222da48517 :
1)
${NORMAL}" #sistem info mesage
        return 0
    fi
    NARGS=$#
    local verbose=0
    [[ " ${ARGS[*]} " =~ " -verbose " ]] || verbose=1
    [[ 1 -eq ${verbose} ]] || echo -e "${HLIGHT}---$filename_222da48517 $* ---${NORMAL}" #started functions
    local idir_222da48517=$(pwd)
    local rdir_222da48517="$(prs_f -d $filename_222da48517)"
    local gname_222da48517="$(prs_f -n $filename_222da48517)" # name without .ext
    #{header}

    #----------------------------------------------------------------------
    #-------------------------------------
    #-------------------------------
    echo -e "${HLIGHT}--- ${_bcp_sys_} -_dpl ---${NORMAL}"
    "${_bcp_sys_}" -_dpl
    #{body}
    #-------------------------------
    #-------------------------------------
    #----------------------------------------------------------------------

    cd "$idir"

    unset filename
}

fntmp_222da48517 "$1" "$2" "$3" "$4" "$5" "$6" "$7" "$8"

unset fntmp_222da48517
