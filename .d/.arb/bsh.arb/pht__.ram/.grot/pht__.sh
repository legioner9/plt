#!/bin/bash
#. "${HOME}/.bashrc"
filename="${PLT_PATH}/.d/.arb/bsh.arb/pht__.ram/.grot/pht__.sh"
echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file
idir=$(pwd)
# cd "$(prs_f -d $filename)" || qq_exit "$(prs_f -d $filename) not found"
# garg_ $(prs_f -n $filename) $@ 1>/dev/null
#{pre_fn}

pht__() {
    local FNN=${FUNCNAME[0]}
    local PPWD=$PWD
    local ARGS=("$@")
    local NARGS=$#
    local verbose=0
    [[ " ${ARGS[*]} " =~ " -verbose " ]] || verbose=1
    [[ 1 -eq ${verbose} ]] || echo -e "${CYAN}---$FNN() $* ---${NORMAL}" #started functions
    local d_name=$(dirname ${PLT_PATH}/.d/.arb/bsh.arb/pht__.ram/.grot/pht__.sh)
    # wrp_fifs1_ cd ${d_name} -d
    #{intro_fn}
    if [ "-h" == "$1" ]; then
        echo -e "${CYAN} ${FNN}() help: 
MAIN: tmax flow : \$1=delta+8000 port : \$2 = path to file .php : 0:0 start php -S .php:port, 0:1 start links2 localhost:port
NAME: ${FNN}()
WHERE?:(only in root dir)Y/N
WHAT?:(only abs path | only name file | any stile path )
ARGS: 
\$1=delta+8000
\$2 = path to file .php
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

    hint="\$1: delta port+8000 \$2: path .php"

    if isn_from__ ${NARGS} 2 2 "in ${FNN}() : ERR_AMOUNT_ARGS entered :'${NARGS}' args : ${hint} : return 1"; then
        return 1
    fi

    if ! is_num $1; then
        plt_exit "in ${FNN} : NOT_NUMBER : 'THIS' : ${hint} : return 1"
        return 1
    fi

    if ! [[ -f $2 ]]; then
        plt_exit "in ${FNN} : NOT_FILE : 'file://$2' : ${hint} : return 1"
        return 1
    fi

    # amount_arg $# 1 1

    local num_port
    num_port=$((8000 + $1))
    local path_php_file
    path_php_file=$2
    local name_session
    name_session="php_${num_port}"

    echo -e "${GREEN}\$name_session = $name_session${NORMAL}"       #print variable
    echo -e "${GREEN}\$num_port = $num_port${NORMAL}"               #print variable
    echo -e "${GREEN}\${path_php_file} = ${path_php_file}${NORMAL}" #print variable

    # kill -9 "$(lsof -t -i:${num_port})"
    kill_port__ ${num_port}

    tm_k__ ${name_session}

    tmux new -s ${name_session} -d

    tmux split-window -h -t ${name_session}:0.0

    tmux send-keys -t ${name_session}:0.0 "php -S localhost:${num_port} ${path_php_file}" Enter

    sleep 3

    tmux send-keys -t "${name_session}":0.1 "links2 http://localhost:${num_port}/" Enter

    tm_a__

    #{body_fn}
}

cd "${idir}"
unset filename
#{post_fn}
