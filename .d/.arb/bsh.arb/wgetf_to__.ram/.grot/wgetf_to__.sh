#!/bin/bash
#. "${HOME}/.bashrc"
filename="${PLT_PATH}/.d/.arb/bsh.arb/wgetf_to__.ram/.grot/wgetf_to__.sh"
echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file
idir=$(pwd)
# cd "$(prs_f -d $filename)" || qq_exit "$(prs_f -d $filename) not found"
# garg_ $(prs_f -n $filename) $@ 1>/dev/null
#{pre_fn}

wgetf_to__() {

    local FNN=${FUNCNAME[0]}
    local PPWD=$PWD
    local ARGS=("$@")
    local NARGS=$#
    echo -e "${BLUE}--- wgetf_to__ ${ARGS[*]} ---${NORMAL}" #sistem info mesage
    local verbose=0
    [[ " ${ARGS[*]} " =~ " -verbose " ]] || verbose=1
    [[ 1 -eq ${verbose} ]] || echo -e "${CYAN}---$FNN() $* ---${NORMAL}" #started functions
    local d_name=$(dirname ${PLT_PATH}/.d/.arb/bsh.arb/wgetf_to__.ram/.grot/wgetf_to__.sh)
    # wrp_fifs1_ cd ${d_name} -d
    #{intro_fn}
    if [ "-h" == "$1" ]; then

        echo -e "${CYAN} ${FNN}() help: 
MAIN: 
NAME: ${FNN}()
WHERE?:(only in root dir)Y/N
WHAT?:(only abs path | only name file | any stile path )
ARGS: 
\$1 url file
[ ,\$2 
    if <null> : ptr_path_2=\$(pwd)$(basename "\$1") 
    if <dir>  : ptr_path_2=\$2/$(basename \$1) 
    if <null> : ptr_path_2=\$2
]
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

    if isn_from__ ${NARGS} 1 2 "in ${FNN}() : ERR_AMOUNT_ARGS entered :'${NARGS}' args : return 1"; then
        return 1
    fi

    if isn_avl__ "$1"; then
        plt_exit "in ${FNN} : NOT_AVAILABLE : '$1' : return 1"
        return 1
    fi

    local ptr_path_2

    #! ptr_path
    if [[ -z "$2" ]]; then
        ptr_path_2=$(basename "$1")
    else
        if [[ -d "$2" ]]; then
            ptr_path_2="$2"/$(basename "$1")

        else
            if [[ -d "$(dirname "$2")" ]]; then
                ptr_path_2="$2"
            else
                plt_exit "in ${FNN} : NOT_DIR : '$(dirname "$2")' : return 1"
                return 1
            fi
        fi
    fi

    ptr_path_2="$("${_abs_path}" "${PPWD}" "ptr_path_2")"

    #[[ptr_path]]

    #* --user-agent="Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 YaBrowser/23.7.5.717 Yowser/2.5 Safari/537.36"

    #* wget -P ~/Downloads/ -O name.file
    #* С помощью опций --http-user=username, –http-password=password и --ftp-user=username, --ftp-password=password вы можете задать имя пользователя и пароль для HTTP или FTP ресурсов.
    #* Если опции -O не передать аргументов, то скачанный файл будет выведен в стандартный вывод, затем мы его можем перенаправить интерпретатору bash, как показано выше.
    #* -o wgetfile.log
    #* --reject=png не нужны файлы определённого типа
    #* -A.txt только файлы определённого типа
    #* --spider проверить работоспособность URL
    #* -e http_proxy=xx.xx.xx.xx:8080

    echo -e "${HLIGHT}--- wget -O ${ptr_path_2} -E -c -nd --user-agent=Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 YaBrowser/23.7.5.717 Yowser/2.5 Safari/537.36 $1  ---${NORMAL}" #start files

    wget -O "${ptr_path_2}" -E -c -nd --user-agent="Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 YaBrowser/23.7.5.717 Yowser/2.5 Safari/537.36" "$1"

    # amount_arg $# 1 1
    #{body_fn}
}

cd "${idir}"
unset filename
#{post_fn}
