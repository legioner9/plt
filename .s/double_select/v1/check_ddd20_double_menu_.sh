#!/bin/bash
#. "${HOME}/.bashrc"
filename="${PLT_PATH}/.s/double_select/v1/check_ddd20_double_menu_.sh"
echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file
idir=$(pwd)
# cd "$(prs_f -d $filename)" || qq_exit "$(prs_f -d $filename) not found"
# garg_ $(prs_f -n $filename) $@ 1>/dev/null
#{pre_fn}

check_ddd20_double_menu_() {
    local FNN=${FUNCNAME[0]}
    local PPWD=$PWD
    local ARGS=($@)
    local NARGS=$#
    local verbose=0
    [[ " ${ARGS[*]} " =~ " -verbose " ]] || verbose=1
    [[ 1 -eq ${verbose} ]] || echo -e "${CYAN}---$FNN() $* ---${NORMAL}" #started functions
    local d_name=$(dirname ${PLT_PATH}/.s/double_select/v1/check_ddd20_double_menu_.sh)
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
    if ! garg2e_ "${ARGS[@]}" 1>/dev/null; then
        plt_exit " ${FNN} return 1: ${FNLOCK}"
        return 1
    fi
    g_args=($(garg2e_ "${ARGS[@]}"))
    [[ 1 -eq ${verbose} ]] || echo -e "${GREEN}\${g_args[@]}: ${g_args[*]}${NORMAL}" #print variable
    for strex in $(garg2e_ "${ARGS[@]}"); do
        [[ 1 -eq ${verbose} ]] || echo "local $strex"
        eval local $strex
    done
    #{default_cntl_fn}
    # amount_arg $# 1 1
    #{body_fn}

    arg1=$1
    arg2=$2
    # echo -e "1 ${GREEN}$@ = $*${NORMAL}" #print variable
    check_ddd20_double_menu_in_() {
        echo -e "${BLUE}--- exec ${FNN}in_ (num_menu) $* ---${NORMAL}" #started functions
        arr_2=()
        res_2=()
        arr_2+=("leave menu")
        res_2+=("echo bye)))")
        #{arr_res}
        arr_2+=("c")
        res_2+=("echo $1 c")
        arr_2+=("d")
        res_2+=("echo $1 d")
        # arr_2+=("aaaaaaaaa")
        # res_2+=("bbbbbbbbb")
        # arr_2+=("aaaaaaaaa")
        # res_2+=("bbbbbbbbb")
        # echo "$arg2=$arg2"
        if [ $(num_01 $2) -eq 1 ] && [ $2 -le ${#arr_2[@]} ]; then
            num_res_2=$(($2 - 1))
            ${res_2[${num_res_2}]}
            return 0
        fi
        PS3="eligendi actiones second: "
        select item_2 in "${arr_2[@]}"; do
            for ((i_2 = 0; i_2 < 1000; i_2++)); do
                if [[ ${item_2} == ${arr_2[${i_2}]} ]]; then
                    ${res_2[${i_2}]}
                fi
                if [[ ${item_2} == ${arr_2[0]} ]]; then
                    ${res_2[${i_2}]}
                fi
            done
        done
        echo -e "${BLUE}--- exec ${FNN} (num_menu) ---${NORMAL}" #started functions
        arr=()
        res=()
        arr+=("leave menu")
        res+=("echo bye)))")
        #{arr_res}
        # arr+=("aaaaaaaaa")
        # res+=("bbbbbbbbb")
        # arr+=("aaaaaaaaa")
        # res+=("bbbbbbbbb")
        # arr+=("aaaaaaaaa")
        # res+=("bbbbbbbbb")
        # arr+=("aaaaaaaaa")
        # res+=("bbbbbbbbb")
        if [ $(num_01 $1) -eq 1 ] && [ $1 -le ${#arr[@]} ]; then
            num_res=$(($1 - 1))
            ${res[${num_res}]}
            return 0
        fi
        PS3="eligendi actiones: "
        select item in "${arr[@]}"; do
            for ((i = 0; i < 1000; i++)); do
                if [[ ${item} == ${arr[$i]} ]]; then
                    ${res[$i]}
                    ${FNN} $@
                fi
                if [[ ${item} == ${arr[0]} ]]; then
                    ${res[$i]}
                fi
            done
        done
        #{zzz20}
    }
    echo -e "${BLUE}--- exec ${FNN} (num_menu) $* ---${NORMAL}" #started functions
    arr=()
    res=()
    arr+=("leave menu")
    res+=("echo bye)))")
    #{arr_res}
    arr+=("a")
    res+=("echo a")
    arr+=("b")
    res+=("echo b")
    # arr+=("aaaaaaaaa")
    # res+=("bbbbbbbbb")
    # arr+=("aaaaaaaaa")
    # res+=("bbbbbbbbb")
    if [ $(num_01 $arg1) -eq 1 ] && [ $arg1 -le ${#arr[@]} ]; then
        num_res=$(($arg1 - 1))
        ${res[${num_res}]}
        dbl_select_in_ "${arr[$i]}" "$arg2"
        return 0
    fi
    PS3="eligendi actiones first: "
    select item in "${arr[@]}"; do
        for ((i = 0; i < 1000; i++)); do
            if [[ ${item} == ${arr[$i]} ]]; then
                ${res[$i]}
                dbl_select_in_ "${arr[$i]}" "$arg2"
                ${FNN} "$@"
            fi
            if [[ ${item} == ${arr[0]} ]]; then
                ${res[$i]}
            fi
        done
    done
    #{ddd20}
}

cd "${idir}"
unset filename
#{post_fn}
