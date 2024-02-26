#!/bin/bash

#. "$HOME/.bashrc"

filename="${HOME}/REPOBARE/_repo/plt/actio/dir_upg_fn_to_plt_/upg_fn_to_plt_extst/extst_1/ex1/_work_dir/work.sh"

ARGS=($@)
NARGS=$#
verbose=0
[[ " ${ARGS[*]} " =~ " -verbose " ]] || verbose=1
[[ 1 -eq ${verbose} ]] || echo -e "${HLIGHT}---$filename $* ---${NORMAL}" #started functions
idir=$(pwd)
rdir="$(prs_f -d $filename)"
gname="$(prs_f -n $filename)" # name without .ext
wrp_fifs1_ cd "$(prs_f -d $filename)" -d1
g_args=($(${_garg2e_} "${ARGS[@]}"))
[[ 1 -eq ${verbose} ]] || echo -e "${GREEN}\${g_args[@]}: ${g_args[*]}${NORMAL}" #print variable
for strex in $(${_garg2e_} "${ARGS[@]}"); do
    [[ 1 -eq ${verbose} ]] || echo "local $strex"
    eval $strex
done
_() {
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

# wrp2_ cd --_xxd "${rdir}"

# grep -rlE "\.qa/main_repo_fn" "$1"
grep -rlE "PATH_FN|\.qa/main_repo_fn" "$1"

#{body}
#-------------------------------
#-------------------------------------
#----------------------------------------------------------------------

cd "$idir"

unset filename
