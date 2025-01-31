#!/bin/bash
#. "${HOME}/.bashrc"
filename="${PLT_PATH}/actio/mall/dir_bdpl_pzip_/.d.ax/.mdeb/a003_fp_f_mdeb_dir.sh"
echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file
idir=$(pwd)
# cd "$(prs_f -d $filename)" || qq_exit "$(prs_f -d $filename) not found"
# garg_ $(prs_f -n $filename) $@ 1>/dev/null
#{pre_fn}

a003_fp_f_mdeb_dir() {
    local FNN=${FUNCNAME[0]}
    local PPWD=$PWD
    local ARGS=($@)
    local NARGS=$#
    local verbose=0
    [[ " ${ARGS[*]} " =~ " -verbose " ]] || verbose=1
    [[ 1 -eq ${verbose} ]] || echo -e "${CYAN}---$FNN() $* ---${NORMAL}" #started functions
    local d_name=$(dirname ${PLT_PATH}/actio/mall/dir_bdpl_pzip_/.d.ax/.mdeb/a003_fp_f_mdeb_dir.sh)
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

    t_dir=${PLT_PATH}/actio/mall/dir_bdpl_pzip_/.d.ax/.mdeb/.tmp

    rm -rfv ${t_dir}/for_mdeb_3/dir_4

    mdeb_num=${t_dir}/for_mdeb_3/dir_4

    cp -rf ${t_dir}/_003 ${mdeb_num}

    cd ${mdeb_num} || plt_exit

    ls -l ${mdeb_num}/dist.d

    bdpl_pzip_ ${PD_READ} ${mdeb_num}/dist.d/src.d ${mdeb_num}/src.d/src.d 1 -bcp

    bdpl_pzip_ ${PD_READ} ${mdeb_num}/dist.d.bck ${mdeb_num}/dist.d/src.d.zip 1 -dpl

    echo -e "${CYAN}--- tree ${mdeb_num} ---${NORMAL}" #sistem info mesage
    tree ${mdeb_num}

    echo -e "${CYAN}--- cat ${mdeb_num}/dist.d.bck/src.d/in_src_d.file ---${NORMAL}" #sistem info mesage
    cat ${mdeb_num}/dist.d.bck/src.d/in_src_d.file

    #{body_fn}
}

cd "${idir}"
unset filename
#{post_fn}
