#!/bin/bash

arr_del_home_files=(".enterrc" \
".gitconfig" \
".vimrc" \
".clang-format" \
".links" \
".fonsh_path" \
".repo_path" \
".plt_path" \
".pd_path" \
"" \
)

arr_del_home_dirs=(".ssh" \
"REPOBARE" \
"" \
)

for file_path in ${arr_del_home_files[@]};do
    rm -vi "${HOME}/${file_path}"
done

for dir_path in ${arr_del_home_dirs[@]};do
    rm -vfri "${HOME:?}/${dir_path}"
done

