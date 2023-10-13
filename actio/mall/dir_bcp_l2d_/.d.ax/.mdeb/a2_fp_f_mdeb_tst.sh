#!/bin/bash
#. "${HOME}/.bashrc"
filename="${PLT_PATH}/actio/mall/dir_bcp_l2d_/.d.ax/.mdeb/a2_fp_f_mdeb_tst.sh"
echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file
idir=$(pwd)
# cd "$(prs_f -d $filename)" || qq_exit "$(prs_f -d $filename) not found"
# garg_ $(prs_f -n $filename) $@ 1>/dev/null
#{pre_fn}

a2_fp_f_mdeb_tst() {
    local FNN=${FUNCNAME[0]}
    local PPWD=$PWD
    local ARGS=($@)
    local NARGS=$#
    local verbose=0
    [[ " ${ARGS[*]} " =~ " -verbose " ]] || verbose=1
    [[ 1 -eq ${verbose} ]] || echo -e "${CYAN}---$FNN() $* ---${NORMAL}" #started functions
    local d_name=$(dirname ${PLT_PATH}/actio/mall/dir_bcp_l2d_/.d.ax/.mdeb/a2_fp_f_mdeb_tst.sh)
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
    if ! garg2e_ "${ARGS[@]}" 1>/dev/null; then
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
    local tmp="${PLT_PATH}"/actio/mall/dir_bcp_l2d_/.d.ax/.mdeb/.tmp
    local lst2="${PLT_PATH}/actio/mall/dir_bcp_l2d_/.d.ax/.mdeb/.tmp/.lst"
    local fs_dir="${PLT_PATH}/actio/mall/dir_bcp_l2d_/.d.ax/.mdeb/.tmp/.fs"

    local arca_dir="${PLT_PATH}/actio/mall/dir_bcp_l2d_/.d.ax/.mdeb/.tmp/.arca"

    local fargs_file="${PATH_FARGS_DIR}/dpl_l2d_/_mdeb/curr_args.fargs"

    rm -frv "${tmp}"/.fs
    cp -rf "${tmp}"/.fs_/. "${tmp}"/.fs
    rm -frv "${arca_dir}"
    mkdir -v "${arca_dir}"

    plt_pause " before -_bcp f1->null d1/0->null"

    echo -e "${HLIGHT}--- echo --_list ${lst2}/bcp_dpl.lst2 --_dir_tar ${arca_dir} --_dlm @ -_bcp -_soft > ${fargs_file} ---${NORMAL}"
    echo "--_list ${lst2}/bcp_dpl.lst2 --_dir_tar ${arca_dir} --_dlm @ -_bcp -_soft" >"${fargs_file}"

    echo -e "${HLIGHT}--- ${_bcp_l2d_} $(cat "${fargs_file}") ---${NORMAL}"

    "${_bcp_l2d_}" "$(cat "${fargs_file}")"

    echo "1f" >${fs_dir}/f1
    echo "1d" >${fs_dir}/d1/0
    echo "1x" >${fs_dir}/d1/x

    "${_ehh}" cat ${fs_dir}/f1
    "${_ehh}" cat ${fs_dir}/d1/x
    "${_ehh}" cat ${fs_dir}/d1/0

    plt_pause "1) before -_dpl, f1->1f d1/0->1d 2) after that mast f1->null d1/0->null BUT in f1.bcp.tar.gz->1f d1.bcp.tar.gz->1d  "

    echo -e "${HLIGHT}--- ${_bcp_l2d_} --_list ${lst2}/bcp_dpl.lst2 --_dir_tar ${arca_dir} --_dlm @ -_dpl -_soft ---${NORMAL}"
    "${_bcp_l2d_}" --_list "${lst2}/bcp_dpl.lst2" --_dir_tar "${arca_dir}" --_dlm "@" -_dpl -_soft

    plt_pause " before f1x >f1, d1x >/d1/0, xx >/d1/x "

    echo "f1x" >${fs_dir}/f1
    echo "d1x" >${fs_dir}/d1/0
    echo "xx" >${fs_dir}/d1/x

    "${_ehh}" cat ${fs_dir}/f1
    "${_ehh}" cat ${fs_dir}/d1/0

    plt_pause " before -_rst "

    echo -e "${HLIGHT}--- ${_bcp_l2d_} --_list ${lst2}/bcp_dpl.lst2 --_dir_tar ${arca_dir} --_dlm @ -_rst -_soft ---${NORMAL}"
    "${_bcp_l2d_}" --_list "${lst2}/bcp_dpl.lst2" --_dir_tar "${arca_dir}" --_dlm "@" -_rst -_soft

    "${_ehh}" cat ${fs_dir}/f1
    "${_ehh}" cat ${fs_dir}/d1/0

}

cd "${idir}"
unset filename
#{post_fn}
