#!/bin/bash

#. "$HOME/.bashrc"

filename="/home/st/REPOBARE/_repo/plt/actio/dir_fp_f_/_fp_f_/_mdeb/.cntl/cr_fp_f_mdeb_postfix.sh"

ARGS=($@)
NARGS=$#
verbose=0
[[ " ${ARGS[*]} " =~ " -verbose " ]] || verbose=1
[[ 1 -eq ${verbose} ]] || echo -e "${HLIGHT}---$filename $* ---${NORMAL}" #started functions
idir=$(pwd)
rdir="$(prs_f -d $filename)"
gname="$(prs_f -n $filename)" # name without .ext
wrp_fifs1_ cd "$(prs_f -d $filename)" -d1
g_args=($(garg2e_ "${ARGS[@]}"))
[[ 1 -eq ${verbose} ]] || echo -e "${GREEN}\${g_args[@]}: ${g_args[*]}${NORMAL}" #print variable
for strex in $(garg2e_ "${ARGS[@]}"); do
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
cd "${rdir}"

if [[ -z "$1" ]] || [[ -z "$2" ]] ; then
    plt_exit "dual args mast be exist and mean create a\"\$1\"_fp_f_mdeb_\"\$2\""
fi

cr_shfn_ a"$1"_fp_f_mdeb_"$2".sh
#{body}
#-------------------------------
#-------------------------------------
#----------------------------------------------------------------------

cd "$idir"

unset filename
