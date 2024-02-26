#!/bin/bash
#. "${HOME}/.bashrc"
filename="${PLT_PATH}/actio/mall/dir_pzip_to_/.d.ax/.mdeb/a004_fp_f_mdeb_with_check.sh"
echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file
idir=$(pwd)
# cd "$(prs_f -d $filename)" || qq_exit "$(prs_f -d $filename) not found"
# garg_ $(prs_f -n $filename) $@ 1>/dev/null
#{pre_fn}

a004_fp_f_mdeb_with_check() {
    local FNN=${FUNCNAME[0]}
    local PPWD=$PWD
    local ARGS=($@)
    local NARGS=$#
    local verbose=0
    [[ " ${ARGS[*]} " =~ " -verbose " ]] || verbose=1
    [[ 1 -eq ${verbose} ]] || echo -e "${CYAN}---$FNN() $* ---${NORMAL}" #started functions
    local d_name=$(dirname ${PLT_PATH}/actio/mall/dir_pzip_to_/.d.ax/.mdeb/a004_fp_f_mdeb_with_check.sh)
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
    g_args=($(garg2e_ "${ARGS[@]}"))
    [[ 1 -eq ${verbose} ]] || echo -e "${GREEN}\${g_args[@]}: ${g_args[*]}${NORMAL}" #print variable
    for strex in $(garg2e_ "${ARGS[@]}"); do
        [[ 1 -eq ${verbose} ]] || echo "local $strex"
        eval local $strex
    done
    #{default_cntl_fn}
    # amount_arg $# 1 1
    #{body_fn}

    # cp -rfv "${PLT_PATH}"/actio/mall/dir_pzip_to_/pzip_to_extst/extst_1/ex1/_003 "${PLT_PATH}"/actio/mall/dir_pzip_to_/.d.ax/.mdeb/.tmp/dist_4

    plt_info "START flow pzip_to_ \${PD_READ} \${dist} \${src} 1"

    : >${dir_003}/res

    dir_003="${PLT_PATH}"/actio/mall/dir_pzip_to_/.d.ax/.mdeb/.tmp/dist_4

    # cp -rfv ${PLT_PATH}/actio/mall/dir_pzip_to_/pzip_to_extst/extst_1/ex1/_003 "${dir_003}"

    #! FILE

    src=${dir_003}/src.d/src.file
    dist=${dir_003}/dist.d/dist.zip

    # echo -e "${HLIGHT}--- rm ${dist} ---${NORMAL}" #start files
    # rm "${dist}"

    rm -v ${dir_003}/dist.d/src.file
    # rm -v ${dist}

    echo -e "${CYAN}--- pzip_to_ ${PD_READ} file://${dist} file://${src} 1 ---${NORMAL}" #start files
    pzip_to_ "${PD_READ}" "${dist}" "${src}" 1

    cd "${dir_003}"/dist.d || plt_exit

    echo -e "${CYAN}--- unzip -P ${PD_READ} ${dist} ---${NORMAL}" #start files
    unzip -P "${PD_READ}" "${dist}"

    echo -e "${CYAN}--- cat file://${dir_003}/dist.d/src.file ---${NORMAL}" #start files
    cat "${dir_003}"/dist.d/src.file
    echo
    cat "${dir_003}"/dist.d/src.file >>${dir_003}/res

    echo >>${dir_003}/res

    echo -e "${CYAN}--- diff ${dir_003}/dist.d/src.d ${dir_003}/src.d/src.d ---${NORMAL}" >>${dir_003}/res
    diff "${dir_003}"/dist.d/src.file "${dir_003}"/src.d/src.file
    diff "${dir_003}"/dist.d/src.file "${dir_003}"/src.d/src.file >>${dir_003}/res

    #! DIR

    src=${dir_003}/src.d/src.d
    dist=${dir_003}/dist.d/dist_src_d.zip

    rm -rv ${dir_003}/dist.d/src.d
    # rm -v ${dist}

    # echo -e "${HLIGHT}--- rm ${dist} ---${NORMAL}" #start files
    # rm "${dist}"

    echo -e "${CYAN}--- pzip_to_ ${PD_READ} file://${dist} file://${src} 1 ---${NORMAL}" #start files
    pzip_to_ "${PD_READ}" "${dist}" "${src}" 1

    cd "${dir_003}"/dist.d || plt_exit

    echo -e "${CYAN}--- unzip -P ${PD_READ} -r ${dist} ---${NORMAL}" #start files
    unzip -P "${PD_READ}" "${dist}"

    echo -e "${CYAN}--- cat file://${dir_003}/dist.d/src.file ---${NORMAL}" #start files
    cat "${dir_003}"/dist.d/src.d/in_src_d.file
    echo
    cat "${dir_003}"/dist.d/src.d/in_src_d.file >>${dir_003}/res

    echo >>${dir_003}/res

    echo -e "${CYAN}--- diff ${dir_003}/dist.d/src.d ${dir_003}/src.d/src.d ---${NORMAL}" >>${dir_003}/res
    diff "${dir_003}"/dist.d/src.d "${dir_003}"/src.d/src.d >>${dir_003}/res

    echo -e "${CYAN}--- cat "${dir_003}"/res ---${NORMAL}" #sistem info mesage
    cat "${dir_003}"/res

    pzip_to_ _extst

}

a004_fp_f_mdeb_with_check @

cd "${idir}"
unset filename
#{post_fn}
