#!/bin/bash

RESET_PLT_FONSH_TO_DEFAULT_=""
read -p "START RESET_PLT_FONSH_TO_DEFAULT_ block? =================== y/n"
read RESET_PLT_FONSH_TO_DEFAULT_

if [[ "${RESET_PLT_FONSH_TO_DEFAULT_}" == "y" ]]; then

    rm -fv "$HOME"/.fonsh_path
    rm -fv "$HOME"/.plt_path
    rm -fv "$HOME"/.repo_path
    rm -fv "$HOME"/.enterrc
    rm -rfv "$HOME"/REPOBARE
    rm -rfv "$HOME"/.ssh
    sudo rm rfv

fi
