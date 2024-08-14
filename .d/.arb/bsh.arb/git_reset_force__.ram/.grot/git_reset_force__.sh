#!/bin/bash
#. "${HOME}/.bashrc"
filename="${PLT_PATH}/.d/.arb/bsh.arb/git_reset_force__.ram/.grot/git_reset_force__.sh"
echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file
idir=$(pwd)
# cd "$(prs_f -d $filename)" || qq_exit "$(prs_f -d $filename) not found"
# garg_ $(prs_f -n $filename) $@ 1>/dev/null
#{pre_fn}

git_reset_force__() {
    local FNN=${FUNCNAME[0]}
    local PPWD=$PWD
    local ARGS=("$@")
    local NARGS=$#
    local verbose=0
    [[ " ${ARGS[*]} " =~ " -verbose " ]] || verbose=1
    [[ 1 -eq ${verbose} ]] || echo -e "${CYAN}---$FNN() $* ---${NORMAL}" #started functions
    local d_name=$(dirname ${PLT_PATH}/.d/.arb/bsh.arb/git_reset_force__.ram/.grot/git_reset_force__.sh)
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
    cd $PPWD

    if ! git rev-parse --show-toplevel >/dev/null; then
        hint="'file://${PPWD}' NOT_GIT_DIR"
        _st_exit "in fs= file://${fn_sh_file} , line=${LINENO}, ${FNN}() : : EXEC_FAIL : 'git rev-parse --show-toplevel' : ${hint} : return 1"
        return 1
    fi

    echo -e "${RED}--- exec: git status -s ---${NORMAL}" #start files
    git status -s
    if [[ -z "$(git status -s)" ]]; then
        echo -e "${RED}--- return 0 ---${NORMAL}" #start files
        return 0
    fi

    #! FORCE foget $_W_CONST
    # if [[ "$_W_CONST" == "w+" ]]; then
    #     plt_info "\$_W_CONST=$_W_CONST git_reset__ return 0"
    #     return 0
    # fi

    echo -e "${HLIGHT}--- exec: git clean -n -d in file://$PPWD ---${NORMAL}" #start files
    git clean -n -fd

    if ! is_yes__ "DO_NOT!: but this prevent part REMOVE UNTRACK FILES 'git clean -fd' in file://$PPWD"; then
        echo -e "${HLIGHT}--- exec: git clean -fd ---${NORMAL}" #start files
        git clean -fd
    fi

    echo -e "${HLIGHT}--- exec: git status ---${NORMAL}" #start files
    git status

    if ! is_yes__ "DO_NOT!: but this prevent part 'git reset --hard HEAD' in $PPWD"; then
        echo -e "${HLIGHT}--- exec: git reset --hard HEAD ---${NORMAL}" #start files
        git reset --hard HEAD
    fi

    # amount_arg $# 1 1
    #{body_fn}
}

cd "${idir}"
unset filename
#{post_fn}
