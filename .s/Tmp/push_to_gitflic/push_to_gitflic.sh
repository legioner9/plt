#!/bin/bash

cd ${REPO_PATH} || {
    plt_info "NOT_DIR : '${REPO_PATH}' return 1"
    return 1
}

for dir_repo in $(f2e ${PLT_PATH}/.s/Tmp/push_to_gitflic/repo.lst); do

    cd ${REPO_PATH}/${dir_repo} || {
        plt_info "NOT_DIR : '${REPO_PATH}/${dir_repo}' return 1"
        return 1
    }

    git remote add gitflic git@gitflic.ru:legioner9/${dir_repo}.git

    ques_ "git push gitflic master"
    

done
