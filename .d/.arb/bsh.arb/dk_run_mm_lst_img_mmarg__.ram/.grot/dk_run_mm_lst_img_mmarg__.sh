#!/bin/bash
#. "${HOME}/.bashrc"
filename="${PLT_PATH}/.d/.arb/bsh.arb/dk_run_mm_lst_img_mmarg__.ram/.grot/dk_run_mm_lst_img_mmarg__.sh"
echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file
idir=$(pwd)
# cd "$(prs_f -d $filename)" || qq_exit "$(prs_f -d $filename) not found"
# garg_ $(prs_f -n $filename) $@ 1>/dev/null
#{pre_fn}

dk_run_mm_lst_img_mmarg__() {
    local FNN=${FUNCNAME[0]}
    local PPWD=$PWD
    local ARGS=("$@")
    local NARGS=$#
    local verbose=0
    [[ " ${ARGS[*]} " =~ " -verbose " ]] || verbose=1
    [[ 1 -eq ${verbose} ]] || echo -e "${CYAN}---$FNN() $* ---${NORMAL}" #started functions
    local d_name=$(dirname ${PLT_PATH}/.d/.arb/bsh.arb/dk_run_mm_lst_img_mmarg__.ram/.grot/dk_run_mm_lst_img_mmarg__.sh)
    # wrp_fifs1_ cd ${d_name} -d
    #{intro_fn}
    if [ "-h" == "$1" ]; then
        echo -e "${CYAN} ${FNN}() help: 
MAIN: docker run img from ${PD_PATH}/.d/.lst/dk_pull_mmimg__ with arg from ${PD_PATH}/.d/.lst/dk_run_mmimg_mmarg__/args
NAME: ${FNN}()
WHERE?:(only in root dir)Y/N
WHAT?:(only abs path | only name file | any stile path )
ARGS: 
\$1 \$2 \$3 \$4
       in \$4 menu inserter to {} in arg_string reciver 
    if 0 full menu
    if Num (natural) num menu
    \$5 inserter to {1} in arg_string reciver
    \$6 inserter to {2} in arg_string reciver
[
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
    local dir_file_lst=${PD_PATH}/.d/.lst/dk_pull_mmimg__
    local file_lst=

    local arr_file_name=()
    local arr_file_result=()
    local result=

    arr_file_name=($(d2e_ -n -ff ${dir_file_lst}))
    # parr3e_ arr_file_name

    arr_file_name+=("_edit dir_file_lst")

    arr_file_result=($(d2e_ 0 -ff ${dir_file_lst}))
    # parr3e_ arr_file_result

    arr_file_result+=("_edit dir_file_lst")

    echo -e "
${RED}--- parr2mm_ message :${BLUE} 
GENERATOR_INFO :
name   from :: d2e_ -n -ff file://${dir_file_lst}
result from :: d2e_ 0 -ff file://${dir_file_lst}
${RED}---${NORMAL}"
    #[[fn_info_dk_pull_mmimg__]]

    parr2mm_ arr_file_name arr_file_result result ${ARGS[0]}

    # echo -e "${GREEN}\$result = $result${NORMAL}" #print variable

    if [[ ${result} == "_edit dir_file_lst" ]]; then
        _edit $dir_file_lst
        return 0
    fi

    file_lst=$result

    arr_img_name=($(_f2e $file_lst "in line=${LINENO}, pwd=${PWD} fn=${FUNCNAME}()"))

    arr_img_name+=("_edit file_lst")

    echo -e "
${RED}--- parr2mm_ message :${BLUE} 
GENERATOR_INFO :
name   from :: f2e_ file://${file_lst}
result from :: f2e_ file://${file_lst}
${RED}---${NORMAL}"
    #[[fn_info_dk_pull_mmimg__]]

    result=

    parr2mm_ arr_img_name arr_img_name result ${ARGS[1]}

    if [[ ${result} == "_edit file_lst" ]]; then
        _edit $file_lst
        return 0
    fi

    echo -e "${GREEN}\$result = $result${NORMAL}" #print variable

    #!-----------------------------------------------------------------------------------------

    local eligend_img=$result
    echo -e "${GREEN}\$eligend_img = $eligend_img${NORMAL}" #print variable

    #!-----------------------------------------------------------------------------------------

    local dir_file_arg=${PD_PATH}/.d/.lst/dk_run_mmimg_mmarg__/args
    local file_arg=

    arr_file_name=()
    arr_file_result=()
    result=
    echo -e "${HLIGHT}--- arr_file_name=(\$(d2e_ -n -ff ${dir_file_arg})) ---${NORMAL}" #start files
    arr_file_name=($(d2e_ -n -ff ${dir_file_arg}))
    # parr3e_ arr_file_name

    arr_file_name+=("_edit dir_file_arg")

    arr_file_result=($(d2e_ 0 -ff ${dir_file_arg}))
    # parr3e_ arr_file_result

    arr_file_result+=("_edit dir_file_arg")

    echo -e "
${RED}--- parr2mm_ message :${BLUE} 
GENERATOR_INFO :
name   from :: d2e_ -n -ff file://${dir_file_arg}
result from :: d2e_ 0 -ff file://${dir_file_arg}
${RED}---${NORMAL}"
    #[[fn_info_dk_pull_mmimg__]]

    parr2mm_ arr_file_name arr_file_result result ${ARGS[2]}
    echo -e "${GREEN}\$result = $result${NORMAL}" #print variable

    if [[ $result == "_edit dir_file_arg" ]]; then
        _edit $dir_file_arg
        return 0
    fi

    local file_arg=$result

    IFS=$'\n'
    arr_arg_name=($(_f2e $file_arg "in line=${LINENO}, pwd=${PWD} fn=${FUNCNAME}()"))
    IFS=$' \t\n'

    arr_arg_name+=("_edit file_arg")

    echo -e "
${RED}--- parr2mm_ message :${BLUE} 
GENERATOR_INFO :
name   from ::_f2e file://${file_arg}
result from ::_f2e file://${file_arg}
${RED}---${NORMAL}"
    #[[fn_info_dk_pull_mmimg__]]

    result=

    parr2mm_ arr_arg_name arr_arg_name result ${ARGS[3]}

    if [[ ${result} == "_edit file_arg" ]]; then
        _edit $file_arg
        return 0
    fi

    echo -e "${GREEN}\$result = $result${NORMAL}"           #print variable
    echo -e "${GREEN}\$eligend_img = $eligend_img${NORMAL}" #print variable

    local str_dk_arg
    # result=$(echo $result | sed 's|{}|'"$eligend_img"'|g')
    # echo "str_dk_arg=\${result/{}/$eligend_img}"
    # eval "str_dk_arg=\${result/{}/$eligend_img}"

    if echo $result | grep '{}'; then
        result=$(echo $result | sed 's|{}|'"$eligend_img"'|g')
    fi

    if echo $result | grep '{1}'; then
        result=$(echo $result | sed 's|{1}|'"${ARGS[4]}"'|g')
    fi

    if echo $result | grep '{2}'; then
        result=$(echo $result | sed 's|{2}|'"${ARGS[5]}"'|g')
    fi

    str_dk_arg=$result

    echo -e "${GREEN}\$str_dk_arg = $str_dk_arg${NORMAL}" #print variable

    plt_pause "DO? : docker run $str_dk_arg"

    echo -e "${HLIGHT}--- exec: docker run $str_dk_arg ---${NORMAL}" #start files
    docker run $str_dk_arg
    # amount_arg $# 1 1
    #{body_fn}
}

cd "${idir}"
unset filename
#{post_fn}
