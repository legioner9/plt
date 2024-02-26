#!/bin/bash
#. "${HOME}/.bashrc"
filename="${PLT_PATH}/actio/mall/dir_dr2e_v2_/.d.ax/.mdeb/.cntl/dr2e_v2_mdeb.sh"
echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file
idir=$(pwd)
# cd "$(prs_f -d $filename)" || qq_exit "$(prs_f -d $filename) not found"
# garg_ $(prs_f -n $filename) $@ 1>/dev/null
#{pre_fn}

dr2e_v2_mdeb(){
local FNN=${FUNCNAME[0]}
local PPWD=$PWD
local ARGS=($@)
local NARGS=$#
local verbose=0
[[ " ${ARGS[*]} " =~ " -verbose " ]] || verbose=1
[[ 1 -eq ${verbose} ]] || echo -e "${CYAN}---$FNN() $* ---${NORMAL}" #started functions
local d_name=$(dirname ${PLT_PATH}/actio/mall/dir_dr2e_v2_/.d.ax/.mdeb/.cntl/dr2e_v2_mdeb.sh)
# wrp_fifs1_ cd ${d_name} -d
${_wrp2_} cd --_xxd "${d_name}" >/dev/null
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
if ! ${_garg2e_} "${ARGS[@]}" 1>/dev/null; then
plt_exit " ${FNN} return 1: ${FNLOCK}"
return 1
fi
g_args=($(${_garg2e_} "${ARGS[@]}"))
[[ 1 -eq ${verbose} ]] || echo -e "${GREEN}\${g_args[@]}: ${g_args[*]}${NORMAL}" #print variable
for strex in $(${_garg2e_} "${ARGS[@]}"); do
[[ 1 -eq ${verbose} ]] || echo "local $strex"
eval local $strex
done
    #{default_cntl_fn}
# amount_arg $# 1 1
echo -e "${BLUE}--- exec ${FNN}() (num_menu) ---${NORMAL}" #started functions
local arr=()
local res=()
local num_res
local item_arr
cd ..
${_wrp2_} c_up --_xxd "$(pwd)" >/dev/null
for res_ in *; do
# echo -e "${GREEN}$arr_ = $arr_${NORMAL}" #print variable
res_=$(prs_f -n "${res_}")
arr_=$(${res_} _head)
arr+=("${arr_}")
res+=("${res_}")
done
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
if [ $(num_01 $1) -eq 1 ] && [ $1 -le ${#arr[@]} ]; then
num_res=$(($1 - 1))
${res[${num_res}]}
return 0
fi
PS3="eligendi actiones: "
select item_arr in "${arr[@]}"; do
for ((i = 0; i < 1000; i++)); do
if [[ ${item_arr} == ${arr[$i]} ]]; then
${res[$i]}
${FNN} $@
fi
done
done
#{zzz20}
    #{body_fn}
}

cd "${idir}"
unset filename
#{post_fn}