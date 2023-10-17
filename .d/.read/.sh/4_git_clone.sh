#!/bin/bash

GIT_PULL_=""
read -p "START GIT_PULL_ ? ========================== y/n"
read GIT_PULL_
if [[ "${GIT_PULL_}" == "y" ]]; then

    mkdir -p "$HOME"/REPOBARE/_repo

    cd "$HOME"/REPOBARE/_repo || {
        read -p "$HOME/REPOBARE/_repo not EXIST: return 1"
        return 1
    }

    git clone git@github.com:legioner9/plt.git || {
        read -p "fail: git clone git@github.com:legioner9/plt.git, return 1"
        return 1
    }

    git clone git@github.com:legioner9/communis.git || {
        read -p "fail: git clone git@github.com:legioner9/communis.git, return 1"
        return 1
    }

    git clone git@github.com:legioner9/fonsh.git || {
        read -p "fail: git clone git@github.com:legioner9/fonsh.git, return 1"
        return 1
    }

#	mkdir "$HOME"/start
#	cd communis || {
#		read -p "${COMMUNIS_PATH} not EXIST, return 1"
#		return 1
#	}
fi
# copy before .bash
