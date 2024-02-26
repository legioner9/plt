#!/bin/bash
#. "${HOME}/.bashrc"
filename="${PLT_PATH}/.d/.arb/bsh.arb/wm_fm__.ram/.grot/wm_fm__.sh"
echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file
idir=$(pwd)
# cd "$(prs_f -d $filename)" || qq_exit "$(prs_f -d $filename) not found"
# garg_ $(prs_f -n $filename) $@ 1>/dev/null
#{pre_fn}

wm_fm__() {
    local FNN=${FUNCNAME[0]}
    local PPWD=$PWD
    local ARGS=("$@")
    local NARGS=$#
    local verbose=0
    [[ " ${ARGS[*]} " =~ " -verbose " ]] || verbose=1
    [[ 1 -eq ${verbose} ]] || echo -e "${CYAN}---$FNN() $* ---${NORMAL}" #started functions
    local d_name=$(dirname ${PLT_PATH}/.d/.arb/bsh.arb/wm_fm__.ram/.grot/wm_fm__.sh)
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
    # g_args=($(${_garg2e_} "${ARGS[@]}"))
    # [[ 1 -eq ${verbose} ]] || echo -e "${GREEN}\${g_args[@]}: ${g_args[*]}${NORMAL}" #print variable
    # for strex in $(${_garg2e_} "${ARGS[@]}"); do
    #     [[ 1 -eq ${verbose} ]] || echo "local $strex"
    #     eval local $strex
    # done
    #{default_cntl_fn}
    # amount_arg $# 1 1

    # VBoxManage controlvm "v1" acpipowerbutton
    # VBoxManage startvm v1
    # VBoxManage list vms
    # VBoxManage list runningvms
    # VBoxManage controlvm "VM name" savestate

    plt_info "STANDART: vm=v1 host_name=stun pswd=123"

    echo -e "${GREEN}\${ARGS[0]} = ${ARGS[0]}${NORMAL}" #print variable

    if isn_from__ ${NARGS} 1 1 "in ${FNN}() : ERR_AMOUNT_ARGS entered :'${NARGS}' args : return 1"; then
        return 1
    fi

    #! start b_sel_ar --------------------------------------
    #! enter env menu <- ARGS[0] , VBoxManage list runningvms

    if ! is_num ${ARGS[0]}; then
        plt_exit "in ${FNN} : NOT_NUMBER : (num_menu)'\${ARGS[0]}=${ARGS[0]}' : return 1"
        return 1
    fi

    local arr_gen=()
    local tmp_arr_gen=()

    IFS=$'\n'
    tmp_arr_gen=("$(VBoxManage list runningvms)")
    IFS=$' \t\n'

    local tmp_item
    IFS=$'\n'
    for tmp_item in ${tmp_arr_gen[@]}; do
        IFS=$' '
        arr_tmp_item=(${tmp_item})
        arr_gen+=(${arr_tmp_item[0]})
        IFS=$'\n'
    done
    IFS=$' \t\n'

    echo -e "${GREEN}\${arr_gen[@]} = ${arr_gen[*]}${NORMAL}" #print variable

    if [[ -z "${arr_gen[0]}" ]]; then
        plt_info "generator return null : VBoxManage list runningvms : return 0"
        return 0
    fi

    local num_res=
    local already_define=0
    local capta=

    if ! [ ${ARGS[0]} -eq 0 ]; then
        if [ ${ARGS[0]} -le ${#arr_gen[@]} ]; then
            num_res=$((${ARGS[0]} - 1))
            capta=${arr_gen[${num_res}]}
            already_define=1
        fi
    fi

    local item_gen=

    if [ ${ARGS[0]} -eq 0 ]; then
        if [ ${already_define} -eq 0 ]; then
            PS3="eligendi actiones: "
            select item_gen in ${arr_gen[@]}; do
                # echo -e "${GREEN}\$do_tm_file = $do_tm_file${NORMAL}" #print variable
                capta=$item_gen
                break
            done
        fi
    fi

    #! result menu -> capta
    #! end b_sel_ar --------------------------------------

    echo -e "${HLIGHT}--- VBoxManage controlvm ${capta} savestate ---${NORMAL}" #start files
    eval VBoxManage controlvm ${capta} savestate

    #{body_fn}
}

cd "${idir}"
unset filename
#{post_fn}
