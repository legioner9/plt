# in $(pwd) create
eval PPWD="$(pwd)"

echo -e "${HLIGHT}--- ${_bcp_sys_} -_bcp ---${NORMAL}"
"${_bcp_sys_}" -_bcp

arr_name_flash=(TOSHIBA_EXT TOSH MY_ONE)

for item_name_flash in "${arr_name_flash[@]}"; do

    if [ -d "/run/media/st/${item_name_flash}" ]; then
        echo -e "${HLIGHT}--- cp -fur ${PLT_PATH}/.d/.read /run/media/$(whoami)/${item_name_flash} ---${NORMAL}"
        cp -fur "${PLT_PATH}/.d/.read" "/run/media/$(whoami)/${item_name_flash}"
    fi

done
