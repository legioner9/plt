#!/bin/bash
#. "${HOME}/.bashrc"
filename="${PLT_PATH}/.d/.arb/bsh.arb/rln__.ram/.grot/rln__.sh"
echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file
idir=$(pwd)
# cd "$(prs_f -d $filename)" || qq_exit "$(prs_f -d $filename) not found"
# garg_ $(prs_f -n $filename) $@ 1>/dev/null
#{pre_fn}

rln__() {
    local FNN=${FUNCNAME[0]}
    local PPWD=$PWD
    local ARGS=("$@")
    local NARGS=$#
    local verbose=0
    [[ " ${ARGS[*]} " =~ " -verbose " ]] || verbose=1
    [[ 1 -eq ${verbose} ]] || echo -e "${CYAN}---$FNN() $* ---${NORMAL}" #started functions
    local d_name=$(dirname ${PLT_PATH}/.d/.arb/bsh.arb/rln__.ram/.grot/rln__.sh)
    # wrp_fifs1_ cd ${d_name} -d
    #{intro_fn}
    if [ "-h" == "$1" ]; then
        echo -e "${CYAN} ${FNN}() help: 
MAIN: cr ln -s --relativ \$1< file> to \$2 <dir> - result <dir>/<file>.rnl, <dir>/<file>.rsym with relpath
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
    # if ! ${_garg2e_} "${ARGS[@]}" 1>/dev/null; then
    #     plt_exit " ${FNN} return 1: ${FNLOCK}"
    #     return 1
    # fi
    # g_args=($(${_garg2e_} "${ARGS[@]}"))
    # [[ 1 -eq ${verbose} ]] || echo -e "${GREEN}\${g_args[@]}: ${g_args[*]}${NORMAL}" #print variable
    # for strex in $(${_garg2e_} "${ARGS[@]}"); do
    #     [[ 1 -eq ${verbose} ]] || echo "local $strex"
    #     eval local $strex
    # done
    #{default_cntl_fn}
    # amount_arg $# 1 1
    if isn_from__ ${NARGS} 3 3 "in ${FNN}() : ERR_AMOUNT_ARGS entered :'${NARGS}' args : return 1"; then
        return 1
    fi

    local file_src="${ARGS[0]}"
    file_src=$(${_abs_path} $PPWD "file_src") #ptr args

    if ! [[ -f "${file_src}" ]]; then
        plt_exit "in ${FNN} : NOT_FILE : '\${ARGS0} = file://${file_src}' : return 1"
        return 1
    fi

    local dir_dist="${ARGS[1]}"
    dir_dist=$(${_abs_path} $PPWD "dir_dist") #ptr args

    if ! [[ -d "${dir_dist}" ]]; then
        plt_exit "in ${FNN} : NOT_DIR : '\${ARGS1} = file://${dir_dist}' : return 1"
        return 1
    fi

    local dist_name="${ARGS[2]}"

    # echo -e "${GREEN}\$file_src = $file_src${NORMAL}" #print variable
    # echo -e "${GREEN}\$dir_dist = $dir_dist${NORMAL}" #print variable

    local file_name=$(basename "${file_src}")

    echo -e "${GREEN}\$file_name = $file_name${NORMAL}" #print variable

    ln -sfv --relative ${file_src} ${dir_dist}

    mv -v ${dir_dist}/${file_name} ${dir_dist}/${dist_name}.rnl

    echo -e "${HLIGHT}--- readlink ${dir_dist}/${dist_name}.rnl > ${dir_dist}/_${dist_name}.rsym ---${NORMAL}" #start files
    readlink ${dir_dist}/${dist_name}.rnl > ${dir_dist}/_${dist_name}.rsym

    #{body_fn}
}

cd "${idir}"
unset filename
#{post_fn}
