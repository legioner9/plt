#!/bin/bash

#. "$HOME/.bashrc"

filename="/home/st/REPOBARE/_repo/plt/actio/dir_fp_f_/fp_f_extst/extst_1/.dd/cr_tree_gign_dir.sh"

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
#{body}
echo ${rdir}
${_wrp2_} cd --_xxd ${rdir}
cd ..

${_wrp2_} tree -a -L 2 -o "$(pwd)"/.dd/tree_gign_dir.man --_xxd ^"$(pwd)"

sed -i '1s|^|'"tree -a -L 2 in $(pwd)\n"'|' "$(pwd)"/.dd/tree_gign_dir.man

# tree -a -L 2 -o ~/TMP/tree.man
# cat ~/TMP/tree.man

# echo $(tree -a -L 2) > ${rdir}/tree_gign_dir.man

#-------------------------------
#-------------------------------------
#----------------------------------------------------------------------

cd "$idir"

unset filename
