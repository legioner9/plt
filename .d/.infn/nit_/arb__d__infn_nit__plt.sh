#!/bin/bash
#? return 2 => return 0, return 3 => return 1
#{pre}

arb__d__infn_nit__plt() {

    # echo -e "${CYAN}--- arb__d__infn_nit__plt() file://${PLT_PATH}/.d/.infn/nit_/arb__d__infn_nit__plt.sh ---${NORMAL}" #sistem info mesage
    # echo -e "${CYAN}--- MAIN: ---${NORMAL}"                                                                             #sistem info mesage

    #! ${dir_for_treat}

    for item_dir in $(ls "${dir_for_treat}"); do

        # echo -e "${GREEN}\$item_dir = $item_dir${NORMAL}" #print variable

        path_item_dir=${dir_for_treat}/${item_dir}

        if [[ -d "${path_item_dir}" ]] && [[ $(prs_f -e "${path_item_dir}") == "ram" ]]; then
            # echo -e "${RED}\$path_item_dir = $path_item_dir${NORMAL}" #print variable

            # echo -e "${HLIGHT}--- ${_dr2e} ${path_item_dir}/.grot tst ---${NORMAL}" #start files
            ${_dr2e} "${path_item_dir}"/.grot tst

        fi

    done

    #{body}

}
