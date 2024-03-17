#!/bin/bash
#. "${HOME}/.bashrc"
filename="${PLT_PATH}/.d/.arb/bsh.arb/dkdo__.ram/.grot/dkdo__.sh"
echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file
idir=$(pwd)
# cd "$(prs_f -d $filename)" || qq_exit "$(prs_f -d $filename) not found"
# garg_ $(prs_f -n $filename) $@ 1>/dev/null
#{pre_fn}

dkdo__() {
    local FNN=${FUNCNAME[0]}
    local PPWD=$PWD
    local ARGS=("$@")
    local NARGS=$#
    local verbose=0
    [[ " ${ARGS[*]} " =~ " -verbose " ]] || verbose=1
    [[ 1 -eq ${verbose} ]] || echo -e "${CYAN}---$FNN() $* ---${NORMAL}" #started functions
    local d_name=$(dirname ${PLT_PATH}/.d/.arb/bsh.arb/dkdo__.ram/.grot/dkdo__.sh)
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
    # g_args=($(${_garg2e_} "${ARGS[@$1]}"))
    # [[ 1 -eq ${verbose} ]] || echo -e "${GREEN}\${g_args[@]}: ${g_args[*]}${NORMAL}" #print variable
    # for strex in $(${_garg2e_} "${ARGS[@]}"); do
    #     [[ 1 -eq ${verbose} ]] || echo "local $strex"
    #     eval local $strex
    # done
    hint="\$1: path to treat: local or net"
    if isn_from__ ${NARGS} 1 1 "in ${FNN}() : ERR_AMOUNT_ARGS entered :'${NARGS}' args : ${hint} : return 1"; then
        return 1
    fi

    local arg_1="$1"

    echo -e "${GREEN}\$arg_1 = $arg_1${NORMAL}" #print variable

    # local match_1="file:///home/st/REPOBARE/_repo/NDocker/_doc/docs.docker.com/"
    # local match_2="https://docs.docker.com/compose/"

    local arr_match=$(f2e ${PLT_PATH}/.d/.lst/dkdo__/match_pre.lst)

    # local arr_match=($match_1 $match_2)
    local match
    local res
    for match in ${arr_match[@]}; do
        if grep $match <<<"$arg_1" >/dev/null; then

            res=${arg_1/$match/}

            if grep "/index.html" <<<$res >/dev/null; then
                if ! [[ -f ${arg_1} ]]; then
                    hint="\$1: local file doc"
                    plt_exit "in ${FNN} : NOT_FILE : 'file://${arg_1}' : ${hint} : return 1"
                    return 1
                fi
                res=${res/\/index.html/}
            else
                res=${res/%\//}
            fi
            res=${res//\//_}
            echo ${res}
        fi
    done

    local dir_arb=${REPO_PATH}/NDocker/.d/.arb/off.arb

    local path_ram_dir=${dir_arb}/${res}.ram

    if [[ -d "${path_ram_dir}" ]]; then
        plt_info "EXIST_FILE : file://${path_ram_dir} : edit_ ${path_ram_dir}"
        edit_ "${path_ram_dir}"
        return 0
    fi

    echo -e "${HLIGHT}--- mkdir file://${path_ram_dir} ---${NORMAL}" #start files
    mkdir "${path_ram_dir}"
    echo -e "${HLIGHT}--- cp file://${dir_arb}/_.ram/. file://${path_ram_dir} ---${NORMAL}" #start files
    cp -r ${dir_arb}/_.ram/. "${path_ram_dir}"
    echo -e "${HLIGHT}--- cp file://${path_php_html} file://${path_ram_dir}/.grot/.html ---${NORMAL}" #start files
    cp "${path_php_html}" ${path_ram_dir}/.grot/.html

    echo -e "${HLIGHT}--- html2pdf__ file://${path_ram_dir}/.grot/.html/${name_php_html} file://${path_ram_dir}/.grot/.pdf ---${NORMAL}" #start files
    html2pdf__ ${path_ram_dir}/.grot/.html/${name_php_html} ${path_ram_dir}/.grot/.pdf &>/dev/null

    edit_ "${path_ram_dir}"

    #{default_cntl_fn}
    # amount_arg $# 1 1
    #{body_fn}
}

cd "${idir}"
unset filename
#{post_fn}
