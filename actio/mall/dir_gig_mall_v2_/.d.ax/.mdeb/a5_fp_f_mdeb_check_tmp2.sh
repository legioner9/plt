#!/bin/bash
#. "${HOME}/.bashrc"
filename="${PLT_PATH}/actio/mall/dir_gig_mall_v2_/.d.ax/.mdeb/a5_fp_f_mdeb_check_tmp2.sh"
echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file
idir=$(pwd)
# cd "$(prs_f -d $filename)" || qq_exit "$(prs_f -d $filename) not found"
# garg_ $(prs_f -n $filename) $@ 1>/dev/null
#{pre_fn}

a5_fp_f_mdeb_check_tmp2() {
    local FNN=${FUNCNAME[0]}
    local PPWD=$PWD
    local ARGS=($@)
    local NARGS=$#
    local verbose=0
    [[ " ${ARGS[*]} " =~ " -verbose " ]] || verbose=1
    [[ 1 -eq ${verbose} ]] || echo -e "${CYAN}---$FNN() $* ---${NORMAL}" #started functions
    local d_name=$(dirname ${PLT_PATH}/actio/mall/dir_gig_mall_v2_/.d.ax/.mdeb/a5_fp_f_mdeb_check_tmp2.sh)
    # wrp_fifs1_ cd ${d_name} -d
    #{intro_fn}
    if [ "-h" == "$1" ]; then
        echo -e "${CYAN} ${FNN}() help: 
MAIN: 
NAME: ${FNN}()
WHERE?:(only in root dir)Y/N
WHAT?:(only abs path | only name file | any stile path )
ARGS: 
$1
[ ,$2 num_menu ]
CNTLS:
required
optional 
CNTL inspect : -h, _man, _go, _list
TAGS: (fs|net|)
IFS: (fifs| exl| ...) - discribe in ${PATH_IFS_DIR}
FLOW: (process | subprocess (no read pause only plt_err return $errno) | interpritator)
RETURN: ( result>stdout, return 0 | data | change to ptr |  fs_structure | ...)
ERROR: ( (plt_err | plt_pause | plt_exit) errmes return 1 | ... )
WARN: 
DEBUG:
EXAMP:
${FNN} -<>
${NORMAL}"
        return 0
    fi
    #{help_cntl_fn}
    if [ "_man" == "$1" ]; then
        edit_ "${d_name}/${FNN}".man
        return 0
    fi
    if [ "_go" == "$1" ]; then
        edit_ "${d_name}/${FNN}".sh
        return 0
    fi
    if [ "_lst" == "$1" ]; then
        edit_ "${d_name}/${FNN}".lst
        return 0
    fi
    if [ "_head" == "$1" ]; then
        echo "_head fn: ${d_name}/${FNN}"
        return 0
    fi
    if ! ${_garg2e_} "${ARGS[@]}" 1>/dev/null; then
        plt_exit " ${FNN} return 1: ${FNLOCK}"
        return 1
    fi
    g_args=($(${_garg2e_} "${ARGS[@]}"))
    [[ 1 -eq ${verbose} ]] || echo -e "${GREEN}\${g_args[@]}: ${g_args[*]}${NORMAL}" #print variable
    for strex in $(${_garg2e_} "${ARGS[@]}"); do
        [[ 1 -eq ${verbose} ]] || echo "local $strex"
        eval local $strex
    done
    #{default_cntl_fn}
    # amount_arg $# 1 1
    #{body_fn}

    #? up _tmp2_
    . ${PLT_PATH}/actio/mall/dir__tmp2_/_tmp2_.nsc.sh

    echo -e "
add to body _tmp2_:
echo 4 \${num}
echo 5 num
num=5
"
    plt_pause "add that?"

    local num=2

    local pts_list_tmp=${PLT_PATH}/actio/mall/dir_gig_mall_v2_/.d.ax/.mdeb/_deb/pts_for_tmp_.lst

    ehh _tmp2_ --_pts ${pts_list_tmp}

    echo ${num}

    echo -e "
that _tmp2_.sal
4 2
5 num
5"

plt_pause "that result?"

    ehh _tmp2_ _mdeb
}

cd "${idir}"
unset filename
#{post_fn}
