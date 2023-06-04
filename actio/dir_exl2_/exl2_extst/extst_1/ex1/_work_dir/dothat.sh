#!/bin/bash

#. "$HOME/.bashrc"

filename="/home/st/REPOBARE/_repo/plt/actio/dir_exl2_/exl2_extst/extst_1/ex1/work_dir/dothat.sh"

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
exl2_ --_exl_list /home/st/REPOBARE/_repo/plt/actio/dir_exl2_/exl2_extst/extst_1/ex1/work_dir/tst_this.exl --_var_list /home/st/REPOBARE/_repo/plt/actio/dir_exl2_/exl2_extst/extst_1/ex1/work_dir/tst_this.var --_var1 ccc=999 --_var2 ddd=8888 --_var3 eee=77000
#{body}
#-------------------------------
#-------------------------------------
#----------------------------------------------------------------------

cd "$idir"

unset filename
