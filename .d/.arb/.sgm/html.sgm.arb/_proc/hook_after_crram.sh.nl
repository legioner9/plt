#!/bin/bash
# use ${arb_} ${sil_} ${ram_} ${ram_to_create}

#! global: ram_name_to_create

cd ${ram_to_create}/.grot || {
    plt_exit "EXEC_FAIL: cd file://${ram_to_create}/.grot return 3"
    return 3
}

touch ${ram_}.html

echo "# https://yandex.ru/search/?text=${ram_}" >${ram_}.anc

echo "# ${ram_}.man" >${ram_}.man

# touch value.lst
# touch bale.obc
