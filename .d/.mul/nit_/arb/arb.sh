#
#! ${dir_for_treat}

for item_dir in $(ls "${dir_for_treat}"); do

    # echo -e "${GREEN}\$item_dir = $item_dir${NORMAL}" #print variable

    path_item_dir=${dir_for_treat}/${item_dir}

    if [[ -d "${path_item_dir}" ]] && [[ $(prs_f -e "${path_item_dir}") == "ram" ]]; then
        # echo -e "${RED}\$path_item_dir = $path_item_dir${NORMAL}" #print variable

        dr2e "${path_item_dir}"/.grot tst

    fi

done
