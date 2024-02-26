#!/bin/bash
#. "${HOME}/.bashrc"
filename="${PLT_PATH}/.d/.arb/bsh.arb/tm_sm__.ram/.grot/tm_sm__.sh"
echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file
idir=$(pwd)
# cd "$(prs_f -d $filename)" || qq_exit "$(prs_f -d $filename) not found"
# garg_ $(prs_f -n $filename) $@ 1>/dev/null
#{pre_fn}

tm_sm__() {
    local FNN=${FUNCNAME[0]}
    local PPWD=$PWD
    local ARGS=("$@")
    local NARGS=$#
    local verbose=0
    [[ " ${ARGS[*]} " =~ " -verbose " ]] || verbose=1
    [[ 1 -eq ${verbose} ]] || echo -e "${CYAN}---$FNN() $* ---${NORMAL}" #started functions
    local d_name=$(dirname ${PLT_PATH}/.d/.arb/bsh.arb/tm_sm__.ram/.grot/tm_sm__.sh)
    # wrp_fifs1_ cd ${d_name} -d
    #{intro_fn}
    if [ "-h" == "$1" ]; then
        echo -e "${CYAN} ${FNN}() help: 
MAIN: 
NAME: ${FNN}()
WHERE?:(only in root dir)Y/N
WHAT?:(only abs path | only name file | any stile path )
ARGS: 
\$1  if 0 menu dir
    if n number of menu dir

[ ,\$2 args for exec files from menu ]

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
    # g_args=($(garg2e_ "${ARGS[@]}"))
    # [[ 1 -eq ${verbose} ]] || echo -e "${GREEN}\${g_args[@]}: ${g_args[*]}${NORMAL}" #print variable
    # for strex in $(garg2e_ "${ARGS[@]}"); do
    #     [[ 1 -eq ${verbose} ]] || echo "local $strex"
    #     echo "$strex"
    #     eval local $strex
    # done
    # #{default_cntl_fn}
    # amount_arg $# 1 1

    echo -e "${GREEN}\${ARGS[0]} = ${ARGS[0]}${NORMAL}" #print variable
    echo -e "${GREEN}\${ARGS[1]} = ${ARGS[1]}${NORMAL}" #print variable
    echo -e "${GREEN}\${ARGS[2]} = ${ARGS[2]}${NORMAL}" #print variable
    echo -e "${GREEN}\${ARGS[3]} = ${ARGS[3]}${NORMAL}" #print variable

    #? ${PLT_PATH}/.d/.mm.d/tm_sm__

    if isn_from__ ${NARGS} 1 5 "in ${FNN}() : ERR_AMOUNT_ARGS entered :'${NARGS}' args : return 1"; then
        return 1
    fi

    if [ $(num_01 ${ARGS[0]}) -ne 1 ]; then
        plt_exit "in ${FNN} : NOT_NUMBER : (num menu) '\${ARGS[0]}=${ARGS[0]}' : return 1"
        return 1
    fi

    local arr=()
    arr=($(d2e_ 0 -ff ${PLT_PATH}/.d/.mm.d/tm_sm__))

    local do_tm_file
    local num_res

    already_define=0

    if ! [ ${ARGS[0]} -eq 0 ]; then
        if [ ${ARGS[0]} -le ${#arr[@]} ]; then
            num_res=$((${ARGS[0]} - 1))
            start_tm_file=${arr[${num_res}]}
            already_define=1
        fi
    fi
    if [ ${ARGS[0]} -eq 0 ]; then
        if [ ${already_define} -eq 0 ]; then
            select do_tm_file in ${arr[@]}; do
                # echo -e "${GREEN}\$do_tm_file = $do_tm_file${NORMAL}" #print variable
                start_tm_file=$do_tm_file
                break
            done
        fi
    fi

    #[[b_sel]]

    echo -e "${HLIGHT}--- cat file://${start_tm_file} ---${NORMAL}" #start files

    cat ${start_tm_file}

    if is_yes__ "tst flow env: \$1='$1', \$2='$2' dir mm.d=${PLT_PATH}/.d/.mm.d/tm_sm__"; then
        . ${start_tm_file} "${ARGS[@]}"
        #{body_fn}
    fi
}
cd "${idir}"
unset filename
#{post_fn}
