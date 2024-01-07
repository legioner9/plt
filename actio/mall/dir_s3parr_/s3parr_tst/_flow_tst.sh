#!/usr/bin/env bash
filename=${PLT_PATH}/actio/mall/dir_s3parr_/s3parr_tst/_flow_tst.sh
# echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file
PW=$(pwd)
idir="$(dirname ${filename})"
cd "${idir}" || {
    echo "${idir} not dir" >&2
    return 1
}
#?----------------------------------------------------
#?-------------------------------------

fn() {

    local p_arr_s=()

    s3parr_ --_str 'ewrved:erfwe:cgbb' --_parr p_arr_s --_del ':' >/dev/null

    # echo -e "${GREEN}\${p_arr[@]} = ${p_arr[*]}${NORMAL}" #print variable

    for ((i = 0; i < ${#p_arr_s[@]}; i++)); do
        echo "\${p_arr_s[$i]} = ${p_arr_s[$i]}"
    done
}

fn


# cr_tst_dir_ <dat &>>res

#{body_sh}
#?-------------------------------------
#?----------------------------------------------------
cd "$idir"
unset filename
unset PW
unset idir
#{ish}
