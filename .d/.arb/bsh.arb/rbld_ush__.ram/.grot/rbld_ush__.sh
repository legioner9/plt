#!/bin/bash
#. "${HOME}/.bashrc"
filename="${PLT_PATH}/.d/.arb/bsh.arb/rbld_ush__.ram/.grot/rbld_ush__.sh"
echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file
idir=$(pwd)
# cd "$(prs_f -d $filename)" || qq_exit "$(prs_f -d $filename) not found"
# garg_ $(prs_f -n $filename) $@ 1>/dev/null
#{pre_fn}

rbld_ush__() {
    local FNN=${FUNCNAME[0]}
    local PPWD=$PWD
    local ARGS=("$@")
    local NARGS=$#
    local verbose=0
    [[ " ${ARGS[*]} " =~ " -verbose " ]] || verbose=1
    [[ 1 -eq ${verbose} ]] || echo -e "${CYAN}---$FNN() $* ---${NORMAL}" #started functions
    local d_name=$(dirname ${PLT_PATH}/.d/.arb/bsh.arb/rbld_ush__.ram/.grot/rbld_ush__.sh)
    # wrp_fifs1_ cd ${d_name} -d
    #{intro_fn}
    if [ "-h" == "$1" ]; then
        echo -e "${CYAN} ${FNN}() help: 
MAIN: rebuild ram in \${PLT_PATH}/.d/.arb/ush.arb from \${PLT_PATH}/.d/.sal.ax
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
    if ! garg2e_ "${ARGS[@]}" 1>/dev/null; then
        plt_exit " ${FNN} return 1: ${FNLOCK}"
        return 1
    fi
    # g_args=($(garg2e_ "${ARGS[@]}"))
    # [[ 1 -eq ${verbose} ]] || echo -e "${GREEN}\${g_args[@]}: ${g_args[*]}${NORMAL}" #print variable
    # for strex in $(garg2e_ "${ARGS[@]}"); do
    #     [[ 1 -eq ${verbose} ]] || echo "local $strex"
    #     eval local $strex
    # done
    #{default_cntl_fn}
    # amount_arg $# 1 1

    local ush_path=${PLT_PATH}/.d/.arb/ush.arb
    local sal_path=${PLT_PATH}/.d/.sal.ax

    if ! [[ -d ${ush_path} ]]; then
        plt_exit "in ${FNN} : NOT_DIR : 'ush.arb=${ush_path}' : return 1"
        return 1
    fi

    local ram_path

    for ram_path in $(d2e_ 0 -dd ${ush_path} ram); do
        echo -e "${GREEN}\$ram_path = $ram_path${NORMAL}" #print variable
        rm -rv "${ram_path}"
    done

    local ram_sal_name

    for ram_sal_name in $(d2e_ -n -dd ${sal_path}); do
        echo -e "${GREEN}\$ram_sal_name = ${ram_sal_name}${NORMAL}" #print variable

        local ram_dir=${ush_path}/${ram_sal_name}.ram

        mkdir -v ${ram_dir}

        # cp ${sal_path}/${ram_sal_name}/${ram_sal_name}.d.h/tags.insert ${ram_dir}/tsgs.fol

        cat ${sal_path}/${ram_sal_name}/${ram_sal_name}.d.h/tags.insert | grep "@" >${ram_dir}/tags.fol

        # cp ${sal_path}/${ram_sal_name}/${ram_sal_name}.d.h/main.insert ${ram_dir}/main.fol

        local main_fol=$(cat ${sal_path}/${ram_sal_name}/${ram_sal_name}.d.h/main.insert)
        echo ${main_fol:5} >${ram_dir}/main.fol

        cp ${sal_path}/${ram_sal_name}/${ram_sal_name}.sal ${ram_dir}/cont.fol

    done

    #{body_fn}
}

cd "${idir}"
unset filename
#{post_fn}