#!/bin/bash
#. "${HOME}/.bashrc"
filename="${PLT_PATH}/.d/.arb/bsh.arb/site2d__.ram/.grot/site2d__.sh"
echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file
idir=$(pwd)
# cd "$(prs_f -d $filename)" || qq_exit "$(prs_f -d $filename) not found"
# garg_ $(prs_f -n $filename) $@ 1>/dev/null
#{pre_fn}

site2d__() {
    local FNN=${FUNCNAME[0]}
    local PPWD=$PWD
    local ARGS=("$@")
    local NARGS=$#
    local verbose=0
    [[ " ${ARGS[*]} " =~ " -verbose " ]] || verbose=1
    [[ 1 -eq ${verbose} ]] || echo -e "${CYAN}---$FNN() $* ---${NORMAL}" #started functions
    local d_name=$(dirname ${PLT_PATH}/.d/.arb/bsh.arb/site2d__.ram/.grot/site2d__.sh)
    # wrp_fifs1_ cd ${d_name} -d
    #{intro_fn}
    if [ "-h" == "$1" ]; then
        echo -e "${CYAN} ${FNN}() help: 
MAIN: 5 args url, (0|deep), (0|-np), (0|file_with_url), (0|string[--div=,] list include subdomens dir)
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
EXAMP: site2d__ <url> 0 0 0 <string[--div=,] list include subdomens dir>
site2d__ 0 3 -ne <file_with_url> 0 :: depth 3 for url from file and not parrent dir
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
    #{body_fn}

    echo -e "${GREEN}\$1 = $1${NORMAL}" #print variable
    echo -e "${GREEN}\$2 = $2${NORMAL}" #print variable
    echo -e "${GREEN}\$3 = $3${NORMAL}" #print variable
    echo -e "${GREEN}\$4 = $4${NORMAL}" #print variable
    echo -e "${GREEN}\$5 = $5${NORMAL}" #print variable

    if [[ -z "$5" ]]; then
        plt_exit "in ${FNN} : ERR_AMOUNT_ARGS : demand 5 args url, (0|deep), (0|-np), (0|file_with_url), (0|string[div=,] list include subdomens)  : return 1"
        return 1
    fi

    if [[ "$2" -ne 0 ]]; then
        local deep=-l"$2"
    fi

    if [[ "$3" == "-np" ]]; then
        local parr="-np"
    fi

    # if [[ "$4" -ne 0 ]];then

    if [[ "$1" != "0" ]]; then

        if [[ "$5" != "0" ]]; then

       eval incl=\"\""$5"\"\"

       echo -e "${GREEN}\$incl = $incl${NORMAL}" #print variable

            plt_pause "download? : $1 to dir ${PPWD}"

            plt_pause "DO? :  wget -r ${deep} -k -p -E ${parr} --user-agent=Mozilla/5.0 \(X11\; Linux x86_64\) AppleWebKit/537.36 \(KHTML, like Gecko\) Chrome/114.0.0.0 YaBrowser/23.7.5.717 Yowser/2.5 Safari/537.36 --include-directories=$incl $1"

            wget -r "${deep}" -k -p -E "${parr}" --user-agent="Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 YaBrowser/23.7.5.717 Yowser/2.5 Safari/537.36" --include-directories="$incl" "$1"

            return 0

        fi

        plt_pause "download? : $1 to dir ${PPWD}"

        plt_pause "DO? :  wget -r ${deep} -k -p -E -nc ${parr} --user-agent="Mozilla/5.0 \(X11\; Linux x86_64\) AppleWebKit/537.36 \(KHTML, like Gecko\) Chrome/114.0.0.0 YaBrowser/23.7.5.717 Yowser/2.5 Safari/537.36 "$1"

        wget -r "${deep}" -k -p -E "${parr}" --user-agent="Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 YaBrowser/23.7.5.717 Yowser/2.5 Safari/537.36" "$1"

    fi

    if [[ "$4" -ne 0 ]]; then

        plt_pause "download? : $1 to dir ${PPWD}"

        plt_pause "DO? :  wget -r ${deep} -k -p -E ${parr} --user-agent=Mozilla/5.0 \(X11\; Linux x86_64\) AppleWebKit/537.36 \(KHTML, like Gecko\) Chrome/114.0.0.0 YaBrowser/23.7.5.717 Yowser/2.5 Safari/537.36 --input-file=$4"

        wget -r "${deep}" -k -p -E "${parr}" --user-agent="Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 YaBrowser/23.7.5.717 Yowser/2.5 Safari/537.36" --input-file="$4"

    fi

}

cd "${idir}"
unset filename
#{post_fn}
