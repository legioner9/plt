#!/bin/bash
#. "${HOME}/.bashrc"
filename="${PLT_PATH}/.d/.arb/bsh.arb/t2c__.ram/.grot/t2c__.sh"
echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file
idir=$(pwd)
# cd "$(prs_f -d $filename)" || qq_exit "$(prs_f -d $filename) not found"
# garg_ $(prs_f -n $filename) $@ 1>/dev/null
#{pre_fn}

t2c__() {
    local FNN=${FUNCNAME[0]}
    local PPWD=$PWD
    local ARGS=($@)
    local NARGS=$#
    local verbose=0
    [[ " ${ARGS[*]} " =~ " -verbose " ]] || verbose=1
    [[ 1 -eq ${verbose} ]] || echo -e "${CYAN}---$FNN() $* ---${NORMAL}" #started functions
    local d_name=$(dirname ${PLT_PATH}/.d/.arb/bsh.arb/t2c__.ram/.grot/t2c__.sh)
    # wrp_fifs1_ cd ${d_name} -d
    #{intro_fn}
    if [ "-h" == "$1" ]; then
        echo -e "${CYAN} ${FNN}() help: 
MAIN: type nod as first char at ls -l
NAME: ${FNN}()
WHERE?:(only in root dir)Y/N
WHAT?:(only abs path | only name file | any stile path )
ARGS: 
$1 nod_fs 
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
    - : file
    d : dir
    c : character devices
    C : high performance (contiguous data) file
    b : block devices
    l : soft link (SYMBOLIC)
    p : named pipe
    s : socket
    D : door (Solaris)
    M : off-line (migrated) file (Cray DMF)
    n : network special file (HP-UX)
    P : port (Solaris)
    ? : some other file type
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
    if [ -z "$1" ]; then
        plt_exit "in ${FNN} : first arg EMPTY : return 1"
        return 1
    fi

    local ptr_path=$1
    ptr_path=$(${_abs_path} $PPWD "ptr_path") #ptr args

    if ! [ -e "$ptr_path" ]; then
        plt_exit "in ${FNN} : NOT_EXIST : '$ptr_path' : return 1"
        return 1
    fi

    if [ "$(file -b "$ptr_path")" == "directory" ]; then
        echo d
        return 0
    fi

    stat_str=$(ls -l ${ptr_path})
    chr_stat_str=${stat_str:0:1}

    if [ -n "${chr_stat_str}" ]; then
        echo "${chr_stat_str}"
        return 0
    fi

    plt_info "in ${FNN} : UNNOWN_ERROR : return 1"
    return 1
    #{body_fn}
}

cd "${idir}"
unset filename
#{post_fn}
