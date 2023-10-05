#!/bin/bash

#. "${HOME}/.bashrc"
fntmp_2dfd269d8b() {
    local filename=${PLT_PATH}/actio/mall/dir_cr_shf_/.d.ax/.mdeb/.tmp/fff.sh

local ARGS=($@)
if [ "${ARGS[0]}" == "-h" ]; then
echo -e "${BLUE} 
help from $filename:
1)
${NORMAL}" #sistem info mesage
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
    #{body}
    #-------------------------------
    #-------------------------------------
    #----------------------------------------------------------------------

    cd "$idir"

    unset filename
}

fntmp_2dfd269d8b $1 $2 $3 $4 $5 $6 $7 $8

unset fntmp_2dfd269d8b
