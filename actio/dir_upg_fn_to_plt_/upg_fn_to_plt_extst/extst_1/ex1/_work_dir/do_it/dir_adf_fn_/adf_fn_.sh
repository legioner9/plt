#!/bin/bash

#! debag
# . "/home/st/.bashrc"
#!

filename="${PATH_MAIN_REPO_FN_DIR}/dir_adf_fn_/adf_fn_.sh"

echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

#e_exer "Questions? See far!" "$filename" "$LINENO"

#up_lib_git

adf_fn_() {

    local FNN=${FUNCNAME[0]}
    local ORIGO_DIR=${PATH_MAIN_REPO_FN_DIR}/dir_$FNN
    local PPWD=$PWD
    local FLN=$0
    local ARGS=($@)
    # local NARGS=$#
    # last par ${!#}
    # all param as "unied word" $*
    # all param as "summ singl words $@"

    # echo -e "${CYAN}---$FNN() $* ---${NORMAL}" #started functions

    if [ "man" == "$1" ]; then
        edit_ "${PATH_MAIN_REPO_FN_DIR}"/dir_"$FNN"/"$FNN".man
        return 0
    fi

    if [ "test" == "$1" ]; then
        "$FNN"test
        return 0
    fi

    if [ "lst" == "$1" ]; then
        edit_ "${PATH_MAIN_REPO_FN_DIR}"/dir_"$FNN"/"$FNN".lst
        return 0
    fi

    if [ "_go" == "$1" ]; then
        edit_ "${PATH_MAIN_REPO_FN_DIR}"/dir_"$FNN"/
        return 0
    fi

    if [ "-h" == "$1" ]; then
        echo -e "${CYAN} ${FUNCNAME[0]}() help: 
            MAIN: 
            NAME: ${FUNCNAME[0]}()
            ARGS: 
            TAGS:
            FLOW:${NORMAL}"
        return 0
    fi

    # echo -e "${CYAN}---${FUNCNAME[0]}()---${NORMAL}" #started functions
    # echo -e "${GREEN}\$PWD = $PWD${NORMAL}"          #print variable
    # echo -e "${GREEN}file = $0${NORMAL}"             #print variable
    # echo -e "${GREEN}args = $*${NORMAL}"             #print variable

    # echo -e "${GREEN}\${ARGS[@]} = ${ARGS[*]}${NORMAL}" #print variable
    # echo -e "${GREEN}\${ARGS[0]} = ${ARGS[0]}${NORMAL}" #print variable
    # echo -e "${GREEN}\${ARGS[1]} = ${ARGS[1]}${NORMAL}" #print variable

    c_up "$ORIGO_DIR/_$FNN/_sh/" 1>/dev/null

    arr=()
    res=()
    # arr+=("ls -a - отображать все файлы, включая скрытые")
    # res+=("ls -a $*")
    # arr+=("ls -a - отображать все файлы, включая скрытые")
    # res+=("ls -a $*")
    # arr+=("ls -a - отображать все файлы, включая скрытые")
    # res+=("ls -a $*")
    # arr+=("ls -a - отображать все файлы, включая скрытые")
    # res+=("ls -a $*")

    case $1 in

    "_0")
        echo -e "${CYAN}---vim mode---${NORMAL}" #started functions
        magic_nm_ "$FNN"

        ;;

    *)
        # echo -e "${BLUE}---main mode---${NORMAL}" #sistem info mesage

        cd_h "$PPWD" 1>/dev/null

        #!function body===================================================================
        #!function body===============================================
        #!function body======================
        amount_arg $# 0 0

        wdir=$(pwd)
        ne=$(prs_f -ne $wdir)
        echo -e "${GREEN}\$ne = $ne${NORMAL}" #print variable

        echo -e "${GREEN}\$wdir = $wdir${NORMAL}" #print variable
        pref=${ne:0:4}
        echo -e "${GREEN}\$pref = $pref${NORMAL}" #print variable

        name_fn=${ne:4}
        echo -e "${GREEN}\$name_fn = $name_fn${NORMAL}" #print variable

        path_tst="$wdir/$name_fn"tst

        if [ $pref == "dir_" ]; then
            qq_pause "mutationes $name_fn?"
        else
            qq_exit "that not fn_dir"
        fi

        if [ -d "$path_tst" ]; then
            qq_exit "$path_tst allready exsist"
        fi
        echo -e "${BLUE}--- cp_h ${PATH_MAIN_REPO_FN_DIR}/dir_f_f_/_f_f_/_tml/_tst $path_tst ---${NORMAL}" #sistem info mesage
        cp_h "${PATH_MAIN_REPO_FN_DIR}/dir_f_f_/_f_f_/_tml/_tst" "$path_tst"

        echo -e "${BLUE}--- sed -i 's/00000/'$name_fn'g' $path_tst/exec._tst ---${NORMAL}" #sistem info mesage
        sed -i 's/00000/'$name_fn'/g' "$path_tst/exec._tst"
        echo -e "${BLUE}--- sed -i 's/00000/'$name_fn'g' $path_tst/_flow_tst.sh ---${NORMAL}" #sistem info mesage

        sed -i 's/00000/'$name_fn'/g' "$path_tst/_flow_tst.sh"

        #!function body======================
        #!function body===============================================
        #!function body===================================================================

        ;;

    esac

}

# adf_fn_ @

unset filename
