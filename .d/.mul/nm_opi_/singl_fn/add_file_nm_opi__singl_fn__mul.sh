#!/bin/bash
#? return 2 => return 0, return 3 => return 1
#{pre}

add_file_nm_opi__singl_fn__mul() {

    echo -e "${CYAN}--- add_file_nm_opi__singl_fn__mul() file://${PLT_PATH}/.d/.mul/nm_opi_/singl_fn/add_file_nm_opi__singl_fn__mul.sh ---${NORMAL}" #sistem info mesage
    echo -e "${CYAN}--- MAIN: ---${NORMAL}"                                                                                                          #sistem info mesage
    #{body}


    if [ -f "${REPO_PATH}/${name_repo}"/.d/.ham/ham/before_add_file_.ham ]; then

        echo -e "${BLUE}--- . "${REPO_PATH}/${name_repo}"/.d/.ham/ham/before_add_file_.ham ---${NORMAL}" #sistem info mesage

        if ! . "${REPO_PATH}/${name_repo}"/.d/.ham/ham/before_add_file_.ham; then
            plt_exit "in nm_opi_() : FAIL_EXEC : '. file://${REPO_PATH}/${name_repo}/.d/.ham/ham/before_add_file_.ham' {with \$name_repo = '$name_repo'} : return 1"
            return 1
        fi

    fi

    cd "${dir_repo}/${name_repo}" || {
        plt_info "in add_file_nm_opi__singl_fn__mul() : FAIL_EXEC : 'cd file://${dir_repo}/${name_repo}' : return 1"
        return 1
    }

    if ! git add .; then
        plt_info "in add_file_nm_opi__singl_fn__mul() : FAIL_EXEC : 'git add .' : { pwd = ${dir_repo}/${name_repo} } : return 1"
        return 1
    fi

}
