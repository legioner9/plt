#!/bin/bash
#. "${HOME}/.bashrc"
filename="${PLT_PATH}/.d/.arb/osh.arb/l2d_js___.ram/.grot/l2d_js___.sh"
echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file
idir=$(pwd)
# cd "$(prs_f -d $filename)" || qq_exit "$(prs_f -d $filename) not found"
# garg_ $(prs_f -n $filename) $@ 1>/dev/null
#{pre_fn}

l2d_js___() {
    local FNN=${FUNCNAME[0]}
    local PPWD=$PWD
    local ARGS=($@)
    local NARGS=$#
    local verbose=0
    [[ " ${ARGS[*]} " =~ " -verbose " ]] || verbose=1
    [[ 1 -eq ${verbose} ]] || echo -e "${CYAN}---$FNN() $* ---${NORMAL}" #started functions
    local d_name=$(dirname ${PLT_PATH}/.d/.arb/osh.arb/l2d_js___.ram/.grot/l2d_js___.sh)
    # wrp_fifs1_ cd ${d_name} -d
    #{intro_fn}
    if [ "-h" == "$1" ]; then
        echo -e "${CYAN} ${FNN}() help: 
MAIN: in root dir: parts.md -> sys dir for js
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

    plt_pause "in l2d_js___() : DO? : cr sys dir in file://$PPWD "

    root_dir="${PPWD}"
    parts_md="${root_dir}"/parts.md

    if ! [[ -f "${parts_md}" ]]; then

        if is_yes "CREATE? : NOT_FILE : ${parts_md}"; then
            touch "${parts_md}"
        else
            plt_exit "in ${FNN} : NOT_FILE : ${parts_md} return 1"
            return 1
        fi
    fi
    echo -e "${HLIGHT}--- cat ${parts_md} ---${NORMAL}" #start files
    cat "${parts_md}"
    echo

    plt_pause "DO? that file://${parts_md} "

    for name_cr_dir in $(${_f2e} ${parts_md}); do

        mkdir -v "${root_dir}"/"${name_cr_dir}"

        if ! [[ -f "${root_dir}"/"${name_cr_dir}"/0.js ]]; then

            echo -e "${HLIGHT}--- echo \'use strict\' >${root_dir}/${name_cr_dir}/0.js ---${NORMAL}" #start files
            echo \'use strict\' >"${root_dir}"/"${name_cr_dir}"/0.js

        fi
    done

    #{body_fn}
}

cd "${idir}"
unset filename
#{post_fn}
