#!/bin/bash

#. "${HOME}/.bashrc"

filename="${PLT_PATH}/actio/dir_fp_f_/fp_f_mall_prov_1_extst/extst_1/ex1/_deb/res/dir_ex1_/_ex1_/_mdeb/.cntl/_cr_ex1_mdeb_postfix.sh"

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
cd ..
echo -e "${GREEN}$(pwd) = $(pwd)${NORMAL}" #print variable
if [[ -z "$1" ]] || [[ -z "$2" ]] ; then
plt_exit "dual args mast be exist and mean create a"$1"_fp_f_mdeb_"$2""
fi
cr_shfn_ a"$1"_fp_f_mdeb_"$2".sh
#{body}
#-------------------------------
#-------------------------------------
#----------------------------------------------------------------------

cd "$idir"

unset filename
