#!/bin/bash

#! amount args
# ${_is_amount_arg} ${NARGS} min_equ max_equ
# if [ $? -ne 0 ]; then
#     plt_pause "${_is_amount_arg}:: be return 1 <- Fail: ${FNLOCK}"
#     return 1
# fi
#! normalize ptr_path -> absolut path
# ptr_path=$1
# ptr_path=$(${_abs_path} $PPWD "ptr_path") #ptr args
#! variables for cr_f_dir_insert_
# fn_name=$(${_prs_f} -n ${arg_path})
# root_path=$(${_prs_f} -d ${arg_path})
#! search in array
# [[ " ${arr[*]} " =~ " $1 " ]] && echo "true" || echo "false"
#! ${array[@]:1} all from 1 member arr

echo -e "${GREEN}\${g_args[@]} = ${g_args[*]}${NORMAL}" #print variable
echo -e "${GREEN}\${e_args[@]} = ${e_args[*]}${NORMAL}" #print variable
echo -e "${GREEN}\${f_args[@]} = ${f_args[*]}${NORMAL}" #print variable
echo -e "${GREEN}\${ARGS[@]} = ${ARGS[*]}${NORMAL}"     #print variable
echo -e "${GREEN}\${ARGS0} = ${ARGS0}${NORMAL}"         #print variable
echo -e "${GREEN}\${ARGS1} = ${ARGS1}${NORMAL}"         #print variable
echo -e "${GREEN}\${ARGS2} = ${ARGS2}${NORMAL}"         #print variable

echo -e "${GREEN}\${dir_fns_} = ${dir_fns_}${NORMAL}" #print variable

echo -e "${GREEN}\${local_var_wrap_arr[@]} = ${local_var_wrap_arr[*]}${NORMAL}" #print variable
echo -e "${GREEN}\${local_var_fn_arr[@]} = ${local_var_fn_arr[*]}${NORMAL}"     #print variable

echo -e "${GREEN}\$ratis = $ratis${NORMAL}" #print variable

echo "that ${FNN}.sal"

echo -e "${BLUE}--- exec ${FNN} (num_menu) ---${NORMAL}" #started functions

pwd
arr=()
res=()

for item in $(d2e ${ARGS0}); do
    echo "$item"
    arr+=("$item")
    res+=("${_exl_} --_exl_list ${ARGS0}/$item")
done

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
            echo -e "${HLIGHT}--- ${res[$i]} ---${NORMAL}" #start files
            ${res[$i]}
            ${FNN} $@
        fi
        if [[ ${item} == ${arr[0]} ]]; then
            ${res[$i]}
        fi
    done
done
#{zzz20}

#?--------------------------------------------------------
#?---------------------------------------------
#?---------------------------------------

#?---------------------------------------
#?---------------------------------------------
#?--------------------------------------------------------
