#!/bin/bash
#. "${HOME}/.bashrc"
filename="${PLT_PATH}/.d/.arb/bsh.arb/html2pdf__.ram/.grot/html2pdf__.sh"
echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file
idir=$(pwd)
# cd "$(prs_f -d $filename)" || qq_exit "$(prs_f -d $filename) not found"
# garg_ $(prs_f -n $filename) $@ 1>/dev/null
#{pre_fn}

html2pdf__() {
    local FNN=${FUNCNAME[0]}
    local PPWD=$PWD
    local ARGS=("$@")
    local NARGS=$#
    local verbose=0
    [[ " ${ARGS[*]} " =~ " -verbose " ]] || verbose=1
    [[ 1 -eq ${verbose} ]] || echo -e "${CYAN}---$FNN() $* ---${NORMAL}" #started functions
    local d_name=$(dirname ${PLT_PATH}/.d/.arb/bsh.arb/html2pdf__.ram/.grot/html2pdf__.sh)
    # wrp_fifs1_ cd ${d_name} -d
    #{intro_fn}
    if [ "-h" == "$1" ]; then
        echo -e "${CYAN} ${FNN}() help: 
MAIN: convert \$1 html to \$2 pdf
NAME: ${FNN}()
WHERE?:(only in root dir)Y/N
WHAT?:(only abs path | only name file | any stile path )
ARGS: 
\$1 path file
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

    if isn_from__ ${NARGS} 1 2 "in ${FNN}() : ERR_AMOUNT_ARGS entered :'${NARGS}' args : return 1"; then
        return 1
    fi

    local ptr_path_1=$1
    ptr_path_1="$("${_abs_path}" "${PPWD}" "ptr_path_1")"

    local ptr_path_2

    #! ptr_path
    if [[ -z "$2" ]]; then
        ptr_path_2=$(basename "$1").pdf
    else
        if [[ -d "$2" ]]; then
            ptr_path_2="$2"/$(basename "$1").pdf

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

    

    echo -e "${HLIGHT}--- wkhtmltopdf ${ptr_path_1} ${ptr_path_2} ---${NORMAL}"
    # wkhtmltopdf -l -g "${ptr_path_1}" "${ptr_path_2}" >/dev/null
    wkhtmltopdf  "${ptr_path_1}" "${ptr_path_2}" >/dev/null

    #{default_cntl_fn}
    # amount_arg $# 1 1
    #{body_fn}
}

cd "${idir}"
unset filename
#{post_fn}
