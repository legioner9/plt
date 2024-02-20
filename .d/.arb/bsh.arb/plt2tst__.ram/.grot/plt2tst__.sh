#!/bin/bash
#. "${HOME}/.bashrc"
filename="${PLT_PATH}/.d/.arb/bsh.arb/plt2tst__.ram/.grot/plt2tst__.sh"
echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file
idir=$(pwd)
# cd "$(prs_f -d $filename)" || qq_exit "$(prs_f -d $filename) not found"
# garg_ $(prs_f -n $filename) $@ 1>/dev/null
#{pre_fn}

plt2tst__() {
    local FNN=${FUNCNAME[0]}
    local PPWD=$PWD
    local ARGS=("$@")
    local NARGS=$#
    local verbose=0
    [[ " ${ARGS[*]} " =~ " -verbose " ]] || verbose=1
    [[ 1 -eq ${verbose} ]] || echo -e "${CYAN}---$FNN() $* ---${NORMAL}" #started functions
    local d_name=$(dirname ${PLT_PATH}/.d/.arb/bsh.arb/plt2tst__.ram/.grot/plt2tst__.sh)
    # wrp_fifs1_ cd ${d_name} -d
    #{intro_fn}
    if [ "-h" == "$1" ]; then
        echo -e "${CYAN} ${FNN}() help: 
MAIN: check main.ham in \${REPO_PATH} return (0|1)
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
    # if ! garg2e_ "${ARGS[@]}" 1>/dev/null; then
    #     plt_exit " ${FNN} return 1: ${FNLOCK}"
    #     return 1
    # fi
    # g_args=($(garg2e_ "${ARGS[@]}"))
    # [[ 1 -eq ${verbose} ]] || echo -e "${GREEN}\${g_args[@]}: ${g_args[*]}${NORMAL}" #print variable
    # for strex in $(garg2e_ "${ARGS[@]}"); do
    #     [[ 1 -eq ${verbose} ]] || echo "local $strex"
    #     eval local $strex
    # done
    #{default_cntl_fn}
    # amount_arg $# 1 1
    #{body_fn}
    #! define in_fn for main.ham

    local dir_plt_proc_ham=${PLT_PATH}/.d/.proc/.ham
    local dir_pd_proc_ham=${PD_PATH}/.d/.proc/.ham

    flag_dexec2err__=0

    if ! dexec2err__ "${dir_plt_proc_ham}"; then
        plt_info "in nm_opi_() : FAIL_EXEC : 'dexec2err__ ${dir_plt_proc_ham}' : flag_dexec2err__=1"
        flag_dexec2err__=1
    fi

    if ! dexec2err__ "${dir_pd_proc_ham}"; then
        plt_info "in nm_opi_() : FAIL_EXEC : 'dexec2err__ ${dir_pd_proc_ham}' : flag_dexec2err__=1"
        flag_dexec2err__=1
    fi

    if [ ${flag_dexec2err__} -eq 1 ]; then
        plt_info "in nm_opi_() : FAIL_EXEC : in any 'dexec2err__()' : return 1"
        return 1
    fi

    local name_repo

    local includ_arr=($(f2e_ ${d_name}/plt2tst__.includ))
    local exclud_arr=($(f2e_ ${d_name}/plt2tst__.exclud))

    echo -e "${GREEN}\${includ_arr[@]} = ${includ_arr[*]}${NORMAL}" #print variable
    echo -e "${RED}\${exclud_arr[@]} = ${exclud_arr[*]}${NORMAL}"   #print variable

    local err_flag=0

    for name_repo in $(d2e_ -n -dd "${REPO_PATH}"); do

        if ! [[ "${includ_arr[*]}" =~ "${name_repo}" ]]; then
            continue
        fi

        if [[ "${exclud_arr[*]}" =~ "${name_repo}" ]]; then
            echo -e "${RED}'${name_repo}' not tested${NORMAL}" #print variable
            continue
        fi

        repo_path_main_ham=${REPO_PATH}/${name_repo}/.d/.ham/main/main.ham
        if [[ -f ${repo_path_main_ham} ]]; then
            echo -e "${HLIGHT}--- . ${repo_path_main_ham} ---${NORMAL}" #start files
            #! name_repo in_var for main.ham in_fn
            if ! . ${repo_path_main_ham}; then
                plt_exit "in ${FNN} : EXEC_FAIL : '. ${repo_path_main_ham}' : err_flag=1"
                err_flag=1
            fi
        fi

    done

    if [[ ${err_flag} -eq 1 ]]; then
        plt_exit "in ${FNN} : EXEC_FAIL : 'plt2tst__ any repo in ${REPO_PATH} fail main ham' : return 1"
        return 1
    fi
}

cd "${idir}"
unset filename
#{post_fn}
