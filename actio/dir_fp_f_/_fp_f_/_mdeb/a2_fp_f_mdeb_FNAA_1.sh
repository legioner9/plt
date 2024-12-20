#!/bin/bash
#. "${HOME}/.bashrc"
filename="${PLT_PATH}/actio/dir_fp_f_/_fp_f_/_mdeb/a2_fp_f_mdeb_FNAA_1.sh"
echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file
idir=$(pwd)
# cd "$(prs_f -d $filename)" || qq_exit "$(prs_f -d $filename) not found"
# garg_ $(prs_f -n $filename) $@ 1>/dev/null
#{pre_fn}

a2_fp_f_mdeb_FNAA_1() {
    local FNN=${FUNCNAME[0]}
    local PPWD=$PWD
    local ARGS=($@)
    local NARGS=$#
    local verbose=0
    [[ " ${ARGS[*]} " =~ " -verbose " ]] || verbose=1
    [[ 1 -eq ${verbose} ]] || echo -e "${CYAN}---$FNN() $* ---${NORMAL}" #started functions
    local d_name=$(dirname ${PLT_PATH}/actio/dir_fp_f_/_fp_f_/_mdeb/a2_fp_f_mdeb_FNAA_1.sh)
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
    if ! ${_garg2e_} "${ARGS[@]}" 1>/dev/null; then
        plt_exit " ${FNN} return 1: ${FNLOCK}"
        return 1
    fi
    if [ "_head" == "$1" ]; then
        echo "a2_fp_f_mdeb_FNAA_1 first deb FNAA"
        return 0
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

    read -p "${PLT_PATH}/.d/.mul/fp_f_/1 copy to ${PLT_PATH}/.d/.mul/fp_f_/3 and add FNAA?"

    local fnaa_path="${PLT_PATH}/actio/dir_fp_f_/_fp_f_/_mdeb/.store/FNAA_1"

    wrp2_ rm -rf --_cxd "${fnaa_path}"/res/dir_nnn2_
    wrp2_ rm -rf --_cxd "${fnaa_path}"/pre/dir_nnn2_

    echo | fp_f_ --_name_fn nnn2_ --_dir_fns "${fnaa_path}"/res --_flow 1
    wrp2_ cp -rf --_xxd "${fnaa_path}"/res/. --_xxd "${fnaa_path}"/pre
    wrp2_ rm -rf --_xxd "${fnaa_path}"/res/dir_nnn2_
    echo | fp_f_ --_name_fn nnn2_ --_dir_fns "${fnaa_path}"/res --_flow 3

    #? compare FNAA with standart nnn2_ - FNAA mast equivalent without FNAA be add
   local diff_str="diff -r ${PLT_PATH}/actio/dir_fp_f_/_fp_f_/_mdeb/.store/FNAA_1/res/dir_nnn2_/ ${PLT_PATH}/actio/dir_fp_f_/_fp_f_/_mdeb/.store/FNAA_1/pre/dir_nnn2_/"
    echo -e "${HLIGHT}--- $diff_str ---${NORMAL}" #start files
    eval "${diff_str}"
    # . ${PLT_PATH}/actio/dir_fp_f_/_fp_f_/_mdeb/.store/FNAA_1/dir_lll2_/lll2_.sh

    # lll2_

    # lll2_mdeb 2

}

cd "${idir}"
unset filename
#{post_fn}
