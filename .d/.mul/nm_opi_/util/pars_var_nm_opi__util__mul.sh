#!/bin/bash
#? return 2 => return 0, return 3 => return 1
#{pre}

pars_var_nm_opi__util__mul() {

    echo -e "${CYAN}--- pars_var_nm_opi__util__mul() file://${PLT_PATH}/.d/.mul/nm_opi_/util/pars_var_nm_opi__util__mul.sh ---${NORMAL}" #sistem info mesage
    echo -e "${CYAN}--- MAIN: ---${NORMAL}"                                                                                              #sistem info mesage
    #{body}

    # clone_net
    # clone_local

    # pull_net_strong
    # pull_local_strong

    # push_net_strong
    # push_local_strong

    # push_net
    # push_local

    arr_all_ptr_var=(clone_net clone_local pull_net_strong pull_local_strong push_net_strong push_local_strong push_net push_local)

    if [ -n "${clone_net}" ] && [ -n "${clone_local}" ]; then
        plt_info "in pars_var_nm_opi__util__mul() : clone_ : EXIST '${clone_net}' && EXIST '${clone_local}' : return 1"
        return 1
    fi

    if [ -z "${clone_net}" ] && [ -z "${clone_local}" ]; then
        plt_info "in pars_var_nm_opi__util__mul() : clone_ : NOT_EXIST '${clone_net}' && NOT_EXIST '${clone_local}' : return 1"
        return 1
    fi

    if ! [ -d "${dir_repo}" ]; then
        plt_info "in pars_var_nm_opi__util__mul() : FAIL_EXEC : '[ -d file://${dir_repo} ]' : return 1"
        return 1
    fi

    if ! [ -d "${dir_bare}" ]; then
        plt_info "in pars_var_nm_opi__util__mul() : FAIL_EXEC : '[ -d file://${dir_bare} ]' : return 1"
        return 1
    fi

    if [ -n "${clone_net}" ]; then
        arr_clone_net=(${clone_net//<>/ })
        clone_net_addr=${arr_clone_net[0]}

        clone_abs_adr=${clone_net_addr}

        if ! is_ping; then
            plt_info "in pars_var_nm_opi__util__mul() : clone_net : FAIL_EXEC : 'is_ping()' : return 1"
            return 1
        fi
    fi

    if [ -n "${clone_local}" ]; then
        arr_clone_local=(${clone_local//<>/ })
        clone_local_addr=${arr_clone_local[0]}

        clone_abs_adr=${clone_local_addr}

        # clone_local_remote=${arr_clone_local[1]}
        # parr3e_ arr_clone_local
        if ! [ -d "${clone_local_addr}" ]; then
            plt_info "in pars_var_nm_opi__util__mul() : FAIL_EXEC : clone_local_addr : '[ -d file://${clone_local_addr} ]' : return 1"
            return 1
        fi
    fi

}
