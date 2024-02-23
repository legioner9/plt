#!/bin/bash
#? return 2 => return 0, return 3 => return 1
#{pre}

006_choice_infn_arb_proc_garb__phylum_a_sil() {

    echo -e "${CYAN}--- 006_chice_infn_arb_proc_garb__phylum_a_sil() file://${PLT_PATH}/.d/.sil.ax/phylum_a.sil/proc/garb_/006_choice_infn_arb_proc_garb__phylum_a_sil.sh ---${NORMAL}" #sistem info mesage
    echo -e "${CYAN}--- MAIN: ---${NORMAL}"                                                                                                                                             #sistem info mesage
    # local first_arg=
    # first_arg=$1
    # if [ -z "${first_arg}" ]; then
    #     plt_info "006_chice_infn_arb_proc_garb__phylum_a_sil() : $1 : args NOT_DEFINE : return 1"
    #     return 1
    # fi
    #! -------------- START check env -------------------

    #! env for  ${ram_name} arb _proc/infn

    if [ -z "${ram_name}" ]; then
        plt_info "in 006_choice_infn_arb_proc_garb__phylum_a_sil() : NOT_DEFINE : '\${ram_name}' : return 1"
        return 1
    fi

    if [ -z "${num_menu_arb_proc}" ]; then
        plt_info "in 006_choice_infn_arb_proc_garb__phylum_a_sil() : NOT_DEFINE : '\${num_menu_arb_proc}' : return 1"
        return 1
    fi

    if [ -z "${arb_path}" ]; then
        plt_info "in 006_choice_infn_arb_proc_garb__phylum_a_sil() : NOT_DEFINE : '\${arb_path}' : return 1"
        return 1
    fi

    if [ -z "${item_arr_name_ram}" ]; then
        plt_info "in 006_choice_infn_arb_proc_garb__phylum_a_sil() : NOT_DEFINE : '\${item_arr_name_ram}' : return 1"
        return 1
    fi

    echo -e "${BLUE}--- exec ${FNN}() (num_menu) ---${NORMAL}" #started functions
    local arr=()
    local res=()
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

    # echo -e "${HLIGHT}--- d2e_ 0 -ff ${SIL_A}/phylum_a.sil/proc/infn_arb_garb_ ---${NORMAL}" #start files
    # d2e_ 0 -ff ${SIL_A}/proc/infn_arb_garb_

    if ! [[ -d ${arb_path}/_proc/infn ]]; then
        cp -rv ${PLT_PATH}/.d/.fs_standarts.ax/garb_/_proc/infn ${arb_path}/_proc/infn
    fi

    #! name in_fn
    arr=($(d2e_ -n -ff ${arb_path}/_proc/infn) $(d2e_ -n -ff ${SIL_A}/proc/infn_arb_garb_))
    #! full path to in_fn.sh
    res=($(d2e_ 0 -ff ${arb_path}/_proc/infn) $(d2e_ 0 -ff ${SIL_A}/proc/infn_arb_garb_))

    arr+=("exit_menu")
    res+=("return 0")
    if [[ "${num_menu_arb_proc}" -gt 0 ]]; then
        if [ $(num_01 ${num_menu_arb_proc}) -eq 1 ] && [ ${num_menu_arb_proc} -le ${#arr[@]} ]; then
            num_res=$((${num_menu_arb_proc} - 1))
            echo -e "${HLIGHT}--- . ${res[${num_res}]} ---${NORMAL}" #start files
            if ! . "${res[${num_res}]}"; then
                plt_exit "in ${FNN} : EXEC_FAIL : '. ${res[${num_res}]}' : return 1"
                return 1
            fi
            return 0
        fi
    fi
    PS3="eligendi actiones: "
    if [[ "${num_menu_arb_proc}" -eq 0 ]]; then
        select item_arr in "${arr[@]}"; do
            for ((i = 0; i < 1000; i++)); do
                if [[ ${item_arr} == ${arr[$i]} ]]; then
                    echo -e "${HLIGHT}--- . ${res[$i]} ---${NORMAL}" #start files
                    if ! . "${res[$i]}"; then
                        plt_exit "in ${FNN} : EXEC_FAIL : '. ${res[$i]}' : return 1"
                        break
                        return 1
                    fi
                    # ${FNN} $@
                fi
            done
        done
    fi
    #[[b_sel]]

    #! -------------- END check env -------------------

    #{body}

}
