#!/bin/bash
#. "${HOME}/.bashrc"
filename="${PLT_PATH}/.d/.arb/bsh.arb/dr2e0ff__.ram/.grot/dr2e0ff__.sh"
echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file
idir=$(pwd)
# cd "$(prs_f -d $filename)" || qq_exit "$(prs_f -d $filename) not found"
# garg_ $(prs_f -n $filename) $@ 1>/dev/null
#{pre_fn}

dr2e0ff__() {
    local FNN=${FUNCNAME[0]}
    local PPWD=$PWD
    local ARGS=($@)
    local NARGS=$#
    local verbose=0
    [[ " ${ARGS[*]} " =~ " -verbose " ]] || verbose=1
    [[ 1 -eq ${verbose} ]] || echo -e "${CYAN}---$FNN() $* ---${NORMAL}" #started functions
    local d_name=$(dirname ${PLT_PATH}/.d/.arb/bsh.arb/dr2e0ff__.ram/.grot/dr2e0ff__.sh)
    # wrp_fifs1_ cd ${d_name} -d
    #{intro_fn}
    if [ "-h" == "$1" ]; then
        echo -e "${CYAN} ${FNN}() help: 
MAIN: like \${_dr2e_} 0 -ff
NAME: ${FNN}()
WHERE?:(only in root dir)Y/N
WHAT?:(only abs path | only name file | any stile path )
ARGS: 
\$1 dir full path
\$2 .ext for search
[ ,$2 num_menu ]
CNTLS:
required
optional 
CNTL inspect : -h, _man, _go, _list
TAGS: (fs|net|)
IFS: (fifs| exl| ...) - discribe in ${PATH_IFS_DIR}
FLOW: (process | subprocess (no read pause only plt_err return $errno) | interpritator)
RETURN: full path for file.ext
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
    # g_args=($(garg2e_ "${ARGS[@]}"))
    # [[ 1 -eq ${verbose} ]] || echo -e "${GREEN}\${g_args[@]}: ${g_args[*]}${NORMAL}" #print variable
    # for strex in $(garg2e_ "${ARGS[@]}"); do
    #     [[ 1 -eq ${verbose} ]] || echo "local $strex"
    #     eval local $strex
    # done
    #{default_cntl_fn}
    # amount_arg $# 1 1

    local arg0="$1"
    local arg1="$2"

    if ! is_amount_arg $# 2 2; then
        plt_exit "in ${FNN} : ERR_AMOUNT_ARGS : \$# = '$#' return 1"
        return 1
    fi

    if ! [[ -d "${arg0}" ]]; then
        plt_exit "in ${FNN} : NOT_DIR : '${arg0}' return 1"
        return 1
    fi

    IFS='
'
    for item in $(ls "$arg0"); do
        # echo -e "${GREEN}\$item = $item${NORMAL}" #print variable

        if [ -z "$item" ]; then
            break
        fi

        # echo -e "${GREEN}\$item = $item${NORMAL}" #print variable

        var="$(is_space_01 "$item")"
        # echo -e "${GREEN}\$var = $var${NORMAL}" #print variable
        if [ "$var" -eq 0 ]; then

            if [ -f "$arg0/$item" ] && [ "${item:0:1}" != "_" ] && [ "$(prs_f -e "$arg0/$item")" == "$arg1" ]; then
                echo "$arg0/$item"
            fi
            if [ -d "$arg0/$item" ] && [ "${item:0:1}" != "_" ]; then
                dr2e0ff__ "$arg0/$item" "$arg1"
            fi
        fi
    done

    IFS=$' \t\n'
    #{body_fn}
}

cd "${idir}"
unset filename
#{post_fn}
