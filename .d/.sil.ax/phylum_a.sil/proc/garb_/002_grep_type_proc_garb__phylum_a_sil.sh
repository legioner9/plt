#!/bin/bash
#? return 2 => return 0, return 3 => return 1
#{pre}

002_grep_type_proc_garb__phylum_a_sil() {

echo -e "${CYAN}--- 002_grep_type_proc_garb__phylum_a_sil() file://${PLT_PATH}/.d/.sil.ax/phylum_a.sil/proc/garb_/002_grep_type_proc_garb__phylum_a_sil.sh ---${NORMAL}" #sistem info mesage
echo -e "${CYAN}--- MAIN: ---${NORMAL}"                         #sistem info mesage
# local first_arg=
# first_arg=$1
# if [ -z "${first_arg}" ]; then
#     plt_info "002_grep_type_proc_garb__phylum_a_sil() : $1 : args NOT_DEFINE : return 1"
#     return 1
# fi
if [ -z "${str_to_grep}" ]; then
        plt_info "in 002_grep_type_proc_garb__phylum_a_sil() : NOT_DEFINE : '\${str_to_grep}' : return 1"
        return 1
    fi

    if [ -z "${arb_osh_dir}" ]; then
        plt_info "in 002_grep_type_proc_garb__phylum_a_sil() : NOT_DEFINE : '\${arb_osh_dir}' : return 1"
        return 1
    fi

    if [ -z "${type_fol_to_grep}" ]; then
        plt_info "in 002_grep_type_proc_garb__phylum_a_sil() : NOT_DEFINE : '\${type_fol_to_grep}' : return 1"
        return 1
    fi

    #! -------------- END check env -------------------
    #{body}

    local mach_grep
    local main_str
    local tags_str
    local arr_name_ram

    arr_name_ram=()

    for name_ram in $(d2e_ -n -dd ${arb_osh_dir} "ram "); do

        # echo -e "${GREEN}\$name_ram = $name_ram${NORMAL}" #print variable
        local path_to_ram=${arb_osh_dir}/${name_ram}.ram

        mach_grep=$(grep "${str_to_grep}" "${path_to_ram}"/"${type_fol_to_grep}".fol)

        if [[ -n "${mach_grep}" ]]; then
            echo -e "${GREEN}match : ${str_to_grep}${NORMAL}"          #print variable
            echo -e "${RED}${type_fol_to_grep} : $mach_grep${NORMAL}" #print variable

            if [ -f ${path_to_ram}/main.fol ]; then

                main_str="$("${_f2oe}" "${path_to_ram}"/main.fol)"
            else
                plt_info "NOT_FILE 'file://${path_to_ram}/main.fol' continue"
                continue
            fi

            if [ -f ${path_to_ram}/tags.fol ]; then
                tags_str="$("${_f2str_}" "${path_to_ram}"/tags.fol)"
            else
                plt_info "NOT_FILE 'file://${path_to_ram}/tags.fol' continue"
                continue
            fi

            echo -e "
        ${BLUE}PATH: file://${path_to_ram}${NORMAL}
        ${GREEN}NAME: ${name_ram}${NORMAL}
        ${RED}MAIN: ${main_str}${NORMAL}
        ${CYAN}TAGS: ${tags_str}${NORMAL}"

            arr_name_ram+=("${name_ram}")

        fi
    done

    if [[ -z "${arr_name_ram[*]}" ]]; then
        plt_info "grep for tag at @${str_to_grep} EMPTY : return 0"
        return 0
    fi

    arr_name_ram+=("exit")

    PS3="eligendi actiones to exec or exit: "

    select item_arr_name_ram in ${arr_name_ram[@]}; do

        if [[ "${item_arr_name_ram}" == "exit" ]]; then
            plt_info "return 0"
            return 0
        fi
        echo -e "${HLIGHT}--- osh_ ${item_arr_name_ram} ---${NORMAL}" #start files
        osh_ "${item_arr_name_ram}"
        return 0
    done
    return 0
    #{body}

} 