#!/bin/bash
#. "${HOME}/.bashrc"
filename="${PLT_PATH}/.d/.arb/bsh.arb/nmw_opi__.ram/.grot/nmw_opi__.sh"
echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file
idir=$(pwd)
# cd "$(prs_f -d $filename)" || qq_exit "$(prs_f -d $filename) not found"
# garg_ $(prs_f -n $filename) $@ 1>/dev/null
#{pre_fn}

nmw_opi__() {
    local FNN=${FUNCNAME[0]}
    local PPWD=$PWD
    local ARGS=($@)
    local NARGS=$#
    local verbose=0
    [[ " ${ARGS[*]} " =~ " -verbose " ]] || verbose=1
    [[ 1 -eq ${verbose} ]] || echo -e "${CYAN}---$FNN() $* ---${NORMAL}" #started functions
    local d_name=$(dirname ${PLT_PATH}/.d/.arb/bsh.arb/nmw_opi__.ram/.grot/nmw_opi__.sh)
    # wrp_fifs1_ cd ${d_name} -d
    #{intro_fn}
    if [ "-h" == "$1" ]; then
        echo -e "${CYAN} ${FNN}() help: 
MAIN: wrap over nm_opi_ - usable str_arg [lst1 lst2 lst3] instead {n1 n2 n3}
NAME: ${FNN}()
WHERE?:(only in root dir)Y/N
WHAT?:(only abs path | only name file | any stile path )
ARGS: 
$1  if num -> num menu
    if -m  -> correct mask args
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

    local ARGS0="$1"
    local edit_mask=0

    if [ "${ARGS0}" == "-m" ]; then
        edit_mask=1
    fi

    local dir_nm_opi_var=${PD_PATH}/.d/.mul/nm_opi_/var        #1
    local dir_nm_opi_lst=${PD_PATH}/.d/.mul/nm_opi_/lst        #2
    local dir_nm_opi_set_fn=${PLT_PATH}/.d/.mul/nm_opi_/set_fn #3
    local file_mask_num=${PD_PATH}/.d/.mul/nmw_opi__/mask/mask_num.lst

    echo -e "${RED}--- edit info: ---${NORMAL}"                                #sistem info mesage
    echo -e "${GREEN}\$dir_nm_opi_var = file://$dir_nm_opi_var${NORMAL}"       #print variable
    echo -e "${GREEN}\$dir_nm_opi_lst = file://$dir_nm_opi_lst${NORMAL}"       #print variable
    echo -e "${GREEN}\$dir_nm_opi_set_fn = file://$dir_nm_opi_set_fn${NORMAL}" #print variable

    local arr_dir_nm_opi_var=()
    local arr_dir_nm_opi_lst=()
    local arr_dir_nm_opi_set_fn=()

    d2parr_dstr__ arr_dir_nm_opi_var ${dir_nm_opi_var}
    d2parr_dstr__ arr_dir_nm_opi_lst ${dir_nm_opi_lst}
    d2parr_dstr__ arr_dir_nm_opi_set_fn ${dir_nm_opi_set_fn}

    local arr_file_mask_num=($(f2e "${file_mask_num}"))
    parr3e_ arr_file_mask_num

    # parr3e_ arr_dir_nm_opi_var
    # parr3e_ arr_dir_nm_opi_lst
    # parr3e_ arr_dir_nm_opi_set_fn

    local item1
    local item2
    local item3

    local arr_item1
    local arr_item2
    local arr_item3

    local arr=()
    local res=()

    for item1 in ${arr_dir_nm_opi_var[@]}; do

        arr_item1=(${item1//<>/ })
        item10=${arr_item1[0]}
        item11=${arr_item1[1]}

        item10=${item10//_nm_opi__var__mul.sh/}
        item10=${item10:4}

        for item2 in ${arr_dir_nm_opi_lst[@]}; do

            arr_item2=(${item2//<>/ })
            item20=${arr_item2[0]}

            item21=${arr_item2[1]}

            item20=${item20//.lst/}
            item20=${item20:4}

            for item3 in ${arr_dir_nm_opi_set_fn[@]}; do

                arr_item3=(${item3//<>/ })
                item30=${arr_item3[0]}

                item31=${arr_item3[1]}

                item30=${item30//_nm_opi__set_fn__mul.sh/}
                item30=${item30:4}

                str_arr="$item10 $item20 $item30"
                str_res="$item11 $item21 $item31"

                arr+=("${str_arr}")
                res+=("${str_res}")

                # echo -e "${GREEN}\$str_arr = $str_arr${NORMAL}" #print variable
                # echo -e "${GREEN}\$str_res = $str_res${NORMAL}" #print variable

            done

        done

    done

    echo -e "${BLUE}--- exec ${FNN}() (num_menu) ---${NORMAL}" #started functions

    local num_res
    local item_arr
    #{arr_res}
    # arr+=("aaaaaaaaa")
    # res+=("bbbbbbbbb")
    # arr+=("aaaaaaaaa")
    # res+=("bbbbbbbbb")
    # arr+=("aaaaaaaaa")
    # res+=("bbbbbbbbb")
    # arr+=("aaaaaaaaa")
    # res+=("bbbbbbbbb")
    arr+=("exit menu")
    res+=("return 0")

    if [ $(num_01 ${ARGS0}) -eq 1 ] && [ ${ARGS0} -le ${#arr[@]} ]; then
        num_res=$((${ARGS0} - 1))
        plt_pause "in nmw_opi__() : DO? : nm_opi_ ${res[${num_res}]}"
        nm_opi_ "${res[${num_res}]}"
        return 0
    fi

    PS3="eligendi actiones: "
    select item_arr in "${arr[@]}"; do
        for ((i = 0; i < 1000; i++)); do
            if [[ ${item_arr} == ${arr[$i]} ]]; then
                plt_pause "in nmw_opi__() : DO? : nm_opi_ ${res[$i]}"
                nm_opi_ "${res[$i]}"
                # ${FNN} $@
                return 0
            fi
        done
    done
    #[[b_sel]]

    # amount_arg $# 1 1
    #{body_fn}

}

cd "${idir}"
unset filename
#{post_fn}
