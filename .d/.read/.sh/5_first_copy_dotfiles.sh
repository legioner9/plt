#!/bin/bash

PLT_COGOS_=""
read -p "START PLT_COGOS_ ? ========================== y/n"
read PLT_COGOS_
if [[ "${PLT_COGOS_}" == "y" ]]; then

    path_tar_dir="${HOME}/REPOBARE/_repo/plt/.d/.repo/bcp_sys_"
    arr_tar_file=(repo_path plt_path fonsh_path)

    for item_arr in "${arr_tar_file[@]}"; do

        echo -e "${HLIGHT}--- tar -xzvf ${path_tar_dir}/${item_arr} -C $HOME ---${NORMAL}"
        tar -xzvf "${path_tar_dir}"/"${item_arr}" -C "$HOME"

    done

fi

touch ~/.bashrc

if ! grep -F 'if [ -f ~/.enterrc ]; then . ~/.enterrc; fi' <~/.bashrc; then
    echo 'if [ -f ~/.enterrc ]; then . ~/.enterrc; fi' >>~/.bashrc
fi

if [ -f ${HOME}/.vscode-oss ]; then
    rm ${HOME}/.vscode-oss
fi
