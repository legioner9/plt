#!/bin/bash

#. "$HOME/.bashrc"

filename="/home/st/REPOBARE/_repo/plt/actio/mall/dir_f3arrparr_/.d.ax/.self_tst/generate_self_tst_1.sh"

ARGS=($@)
NARGS=$#
verbose=0
[[ " ${ARGS[*]} " =~ " -verbose " ]] || verbose=1
[[ 1 -eq ${verbose} ]] || echo -e "${HLIGHT}---$filename $* ---${NORMAL}" #started functions
idir=$(pwd)
rdir="$(prs_f -d $filename)"
gname="$(prs_f -n $filename)" # name without .ext
wrp_fifs1_ cd  "$(prs_f -d $filename)" -d1
g_args=($(garg2e_ "${ARGS[@]}"))
[[ 1 -eq ${verbose} ]] || echo -e "${GREEN}\${g_args[@]}: ${g_args[*]}${NORMAL}" #print variable
for strex in $(garg2e_ "${ARGS[@]}"); do
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
echo -e "# create tst flow at dis_tst and dis2_tst
# rename exec._{ext} to exec.{ext}
# . start_check_distst.sh for tst all files" >howuse.man
echo -e "# in deb_1.sh
## delete dir_1
## create directory "dir_1/dis" with envariment for exec._distst process
## create directory "dir_1/dis2" with envariment for exec._distst process
## create check_distst.list in dir_1
## create start_check_distst.sh in dir_1" >whatshappenig.man
#rr_
#wrp_fifs1_ rm -rf dir_1 -cd1
${_wrp2_} mkdir --_cnd dir_1
${_wrp2_} cd --_xxd dir_1
${_cr_tst_dir_} --name_dir dis --ext distst
${_cr_tst_dir_} --name_dir dis2 --ext distst
#{body}
#-------------------------------
#-------------------------------------
#----------------------------------------------------------------------

cd "$idir"

unset filename
