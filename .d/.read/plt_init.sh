#!/bin/bash

#. "${HOME}/.bashrc"
fntmp_654fe0b9ed() {
    local filename=${PLT_PATH}/.d/.read/plt_init.sh

    local ARGS=($@)
    if [ "${ARGS[0]}" == "-h" ]; then
        echo -e "${BLUE} 
help from $filename :
1)
${NORMAL}" #sistem info mesage
        return 0
    fi
    NARGS=$#
    local verbose=0
    [[ " ${ARGS[*]} " =~ " -verbose " ]] || verbose=1
    [[ 1 -eq ${verbose} ]] || echo -e "${HLIGHT}---$filename $* ---${NORMAL}" #started functions
    local idir=$(pwd)
    local rdir="$(prs_f -d $filename)"
    local gname="$(prs_f -n $filename)" # name without .ext
    #{header}

    #----------------------------------------------------------------------
    #-------------------------------------
    #-------------------------------
    PPWW_654fe0b9ed=$(dirname "${filename}")

    if is_yes "DO? : 1_upd_all_alt ::
    epm full-upgrade
    apt-get install ...
    y?" &&
        [ -f "${PPWW_654fe0b9ed}/.sh/1_upd_all_alt.sh" ]; then
        . "${PPWW_654fe0b9ed}/.sh/1_upd_all_alt.sh"
    fi

    read -p "You apdate your Alt after first install system? ^C if NOT"
    read -p "uncomment : WHEEL_USERS ALL=(ALL) ALL: Enter to continue or ^C to interrapt exec:0)if need sudo ^C  1)su - 2)EDITOR=mcedit visudo  3). _init_flash.sh"

    if is_yes "DO? : 2_reset_plt_fonsh
    rm -f "$HOME"/.fonsh_path
    rm -f "$HOME"/.plt_path
    rm -f "$HOME"/.repo_path
    rm -rf "$HOME"/REPOBARE
    y?" && [ -f "${PPWW_654fe0b9ed}/.sh/2_reset_plt_fonsh.sh" ]; then
        . "${PPWW_654fe0b9ed}/.sh/2_reset_plt_fonsh.sh"
    fi

    if is_yes "DO? : 3_git_init
    SSH_REMOVE_
    SSH_CREATE_
    y?" && [ -f "${PPWW_654fe0b9ed}"/.sh/3_git_init.sh ]; then
        . "${PPWW_654fe0b9ed}"/.sh/3_git_init.sh
    fi

    read -p "Press enter to continue when prepear you Alt: add ssh to github.com or ^C for interrapt"

    if is_yes "DO? : 4_git_clone
    clone plt.git
    clone communis.git
    clone fonsh.git
    y?" && [ -f "${PPWW_654fe0b9ed}"/.sh/4_git_clone.sh ]; then
        . "${PPWW_654fe0b9ed}"/.sh/4_git_clone.sh
    fi

    if is_yes "DO? : 5_first_copy_dotfiles" && [ -f "${PPWW_654fe0b9ed}"/.sh/5_first_copy_dotfiles.sh ]; then
        . "${PPWW_654fe0b9ed}"/.sh/5_first_copy_dotfiles.sh
    fi

    if is_yes "DO? : 6_first_start_bash" && [ -f "${PPWW_654fe0b9ed}"/.sh/6_first_start_bash.sh ]; then
        . "${PPWW_654fe0b9ed}"/.sh/6_first_start_bash.sh
    fi

    if is_yes "DO? : 7_post_first_" && [ -f "${PPWW_654fe0b9ed}"/.sh/7_post_first_.sh ]; then
        . "${PPWW_654fe0b9ed}"/.sh/7_post_first_.sh
    fi

    #{body}
    #-------------------------------
    #-------------------------------------
    #----------------------------------------------------------------------

    cd "$idir"

    unset filename
}

fntmp_654fe0b9ed "$1" "$2" "$3" "$4" "$5" "$6" "$7" "$8"

unset fntmp_654fe0b9ed
