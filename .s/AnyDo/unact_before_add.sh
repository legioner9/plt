#!/bin/bash

for dir_in_repo in $(d2e_ 0 -dd ${REPO_PATH}); do
    echo -e "${GREEN}\$dir_in_repo = $dir_in_repo${NORMAL}" #print variable
    ham_dir=${dir_in_repo}/.d/.ham/ham
    if [[ -f ${ham_dir}/before_add_file_.ham ]]; then
        echo -e "${GREEN}\${ham_dir}/before_add_file_.ham = ${ham_dir}/before_add_file_.ham${NORMAL}" #print variable
        mv -iv ${ham_dir}/before_add_file_.ham ${ham_dir}/_before_add_file_.ham
    fi
done
