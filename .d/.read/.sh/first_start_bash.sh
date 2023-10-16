#!/bin/bash

BIOS_=""
read -p "START BIOS_ block ? ========================== y/n"
read BIOS_
if [[ "${BIOS_}" == "y" ]]; then

	#? . "$HOME"/.bios
	#? use .bachrc <- ${PLT_PATH}/.config/.env allready exist

	if ! . "$HOME"/.bashrc; then
		read -p "fail: . $HOME/.bashrc , return 1"
		return 1
	fi

	"${_bcp_l2d_}" \
		--_list "${HOME}/REPOBARE/_repo/plt/.d/.lst2/bcp_sys_/bcp_bashrc.lst2" \
		--_dlm @ \
		--_dir_tar "${HOME}/REPOBARE/_repo/plt/.d/.repo/bcp_sys_" \
		-_bcp \
		-_soft

	"${_bcp_sys_}" -_dpl

	"${_apt_alt_}" 1

fi