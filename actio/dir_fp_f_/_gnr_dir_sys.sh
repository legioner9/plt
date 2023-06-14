#!/bin/bash

#. "$HOME/.bashrc"

filename="$HOME/REPOBARE/_repo/plt/actio/dir_fp_f_/_gnr_dir_sys.sh"

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
#? cr_tst_sys_ --name_dir extst_1 --ext extst"
_gnr_dir_sys_infn() {
    local _gnr_dir_sys_infn_arg1="$1"
    local _gnr_dir_sys_infn_rdir="${rdir}"
    local _gnr_dir_sys_infn_gname="${gname}"

    echo -e "${GREEN}\$arg1 = $_gnr_dir_sys_infn_arg1${NORMAL}" #print variable
    echo -e "${GREEN}\$_gnr_dir_sys_infn_rdir = $_gnr_dir_sys_infn_rdir${NORMAL}" #print variable
    echo -e "${GREEN}\$_gnr_dir_sys_infn_gname = $_gnr_dir_sys_infn_gname${NORMAL}" #print variable

    [ -z "$1" ] && {
        plt_exit "$1 empty first arg mast be name dir (like namefn_extst_num) in ${in_rdir}"
        return 1
    }
    #
    plt_pause "do that? create sys tst ${_gnr_dir_sys_infn_arg1}_extst dir (like namefn_<num>) cr_tst_sys_ in ${in_rdir}"
    #
    wrp2_ rm --_cxf "${_gnr_dir_sys_infn_rdir}/${_gnr_dir_sys_infn_gname}".tmp.exl
    #
    echo -e "
wrp2_ cd --_xxd ${_gnr_dir_sys_infn_rdir}
#
wrp2_ mkdir --_xnd ${_gnr_dir_sys_infn_rdir}/${_gnr_dir_sys_infn_arg1}_extst
#
wrp2_ cd --_xxd ${_gnr_dir_sys_infn_rdir}/${_gnr_dir_sys_infn_arg1}_extst
#
cr_tst_sys_ --name_dir extst_1 --ext extst" >"${_gnr_dir_sys_infn_rdir}/${_gnr_dir_sys_infn_gname}".tmp.exl
    #
    exl_ --list "${_gnr_dir_sys_infn_rdir}/${_gnr_dir_sys_infn_gname}".tmp.exl
    #
    wrp2_ rm --_cxf "${_gnr_dir_sys_infn_rdir}/${_gnr_dir_sys_infn_gname}".tmp.exl

}

_gnr_dir_sys_infn "$1"

# #? cr_tst_sys_ --name_dir extst_1 --ext extst"
# [ -z "$1" ] && {
#     plt_exit "$1 empty first arg mast be name dir (like namefn_extst_num) in ${rdir}"
#     return 1
# }
# #
# plt_pause "do that? create sys tst $1_extst dir (like namefn_<num>) cr_tst_sys_ in ${rdir}"
# #
# wrp2_ rm --_cxf ${rdir}/${gname}.tmp.exl
# #
# echo -e "
# wrp2_ cd --_xxd ${rdir}
# #
# wrp2_ mkdir --_xnd ${rdir}/"$1"_extst
# #
# wrp2_ cd --_xxd ${rdir}/"$1"_extst
# #
# cr_tst_sys_ --name_dir extst_1 --ext extst" >${rdir}/${gname}.tmp.exl
# #
# exl_ --list ${rdir}/${gname}.tmp.exl
# #
# wrp2_ rm --_cxf ${rdir}/${gname}.tmp.exl
#{body}
#-------------------------------
#-------------------------------------
#----------------------------------------------------------------------

cd "$idir"

unset filename
