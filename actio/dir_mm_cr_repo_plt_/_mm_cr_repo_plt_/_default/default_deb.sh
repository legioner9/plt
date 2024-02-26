#!/bin/bash

#. "$HOME/.bashrc"

filename="$HOME/REPOBARE/_repo/plt/actio/dir_mm_cr_repo_plt_/_mm_cr_repo_plt_/_default/default_deb.sh"

ARGS=($@)
NARGS=$#
verbose=0
[[ " ${ARGS[*]} " =~ " -verbose " ]] || verbose=1
[[ 1 -eq ${verbose} ]] || echo -e "${HLIGHT}---$filename $* ---${NORMAL}" #started functions
idir=$(pwd)
rdir="$(prs_f -d $filename)"
gname="$(prs_f -n $filename)" # name without .ext
wrp_fifs1_ cd  "$(prs_f -d $filename)" -d1
g_args=($(${_garg2e_} "${ARGS[@]}"))
[[ 1 -eq ${verbose} ]] || echo -e "${GREEN}\${g_args[@]}: ${g_args[*]}${NORMAL}" #print variable
for strex in $(${_garg2e_} "${ARGS[@]}"); do
[[ 1 -eq ${verbose} ]] || echo "local $strex"
eval $strex
done
_(){
echo "empty _deb in $filename"
# . $filename" arg1 arg2
}
if [ "_deb" == "$1" ]; then
_
return 0
fi
#{header}

#----------------------------------------------------------------------
#-------------------------------------
#-------------------------------
echo "default_deb.sh is empty"
#{body}
#-------------------------------
#-------------------------------------
#----------------------------------------------------------------------

cd "$idir"

unset filename
