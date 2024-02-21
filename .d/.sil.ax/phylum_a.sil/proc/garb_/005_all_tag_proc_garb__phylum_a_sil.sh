#!/bin/bash
#? return 2 => return 0, return 3 => return 1
#{pre}

005_all_tag_proc_garb__phylum_a_sil() {

    echo -e "${CYAN}--- 005_all_tag_proc_garb__phylum_a_sil() file://${PLT_PATH}/.d/.sil.ax/phylum_a.sil/proc/garb_/005_all_tag_proc_garb__phylum_a_sil.sh ---${NORMAL}" #sistem info mesage
    echo -e "${CYAN}--- MAIN: ---${NORMAL}"                                                                                                                              #sistem info mesage
    # local first_arg=
    # first_arg=$1
    # if [ -z "${first_arg}" ]; then
    #     plt_info "005_all_tag_proc_garb__phylum_a_sil() : $1 : args NOT_DEFINE : return 1"
    #     return 1
    # fi
    #! -------------- START check env -------------------
    # if [ -z "${XXX}" ]; then
    #     plt_info "in 005_all_tags__d_ax__osh___fn_dir_osh_() : NOT_DEFINE : '\${XXX}' : return 1"
    #     return 1
    # fi
    #! -------------- END check env -------------------
    #{body}
    # -_utag
    dir_sil=${SIL_A}
    dir_arb=${PLT_PATH}/.d/.arb/osh.arb

    echo -e "${HLIGHT}--- fol_ --_sil ${dir_sil} --_arb ${dir_arb} -_E ---${NORMAL}" #start files

    fol_ \
        --_sil "${dir_sil}" \
        --_arb "${dir_arb}" \
        -_utag

    # /home/st/REPOBARE/_repo/plt/.d/.arb/osh.arb/all_unique_tags.lst

    local tag_utag

    PS3="delectus tag for grep:"
    select tag_utag in $(f2e_ ${dir_arb}/all_unique_tags.lst); do

        #! str_to_grep : env to 002_grep_type_proc_garb__phylum_a_sil
        local str_to_grep=${tag_utag:1}
        break

    done
    echo -e "${GREEN}\$str_to_grep = $str_to_grep${NORMAL}" #print variable
    # read -p "debug 1: enter"
    #! arb_osh_dir : env to 002_grep_type_proc_garb__phylum_a_sil
    arb_osh_dir=${dir_arb}
    #! type_fol_to_grep : env to 002_grep_type_proc_garb__phylum_a_si
    type_fol_to_grep="tags"

    002_grep_type_proc_garb__phylum_a_sil

    return 0

}
