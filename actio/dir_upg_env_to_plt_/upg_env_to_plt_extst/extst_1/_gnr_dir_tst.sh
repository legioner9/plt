#!/bin/bash

#. "${HOME}/.bashrc"

filename="${PLT_PATH}/actio/dir_upg_env_to_plt_/upg_env_to_plt_extst/extst_1/_gnr_dir_tst.sh"

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
#? cr_tst_dir_ --name_dir ex"$1"_tst --ext extst
[ -z "$1" ] && {
plt_exit "$1 empty first arg mast be num ex<$1> in ${rdir}"
return 1
}
#
plt_pause "do that? create ex$1 tst dir in ${rdir}"
#
cd ${rdir}
#
cr_tst_dir_ --name_dir ex"$1" --ext extst
#
#{body}
#-------------------------------
#-------------------------------------
#----------------------------------------------------------------------

cd "$idir"

unset filename
