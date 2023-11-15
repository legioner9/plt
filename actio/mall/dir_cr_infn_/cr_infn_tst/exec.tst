#!/bin/bash

#. "${HOME}/.bashrc"

filename=${PLT_PATH}/actio/mall/dir_cr_infn_/cr_infn_tst/exec._tst 

# echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file

idir=$(pwd)

# cd "$(prs_f -d $filename)" || qq_exit "$(prs_f -d filename) not found"

dir=$(prs_f -d "$filename")
cd "$dir" || plt_exit
. "$dir"/_flow_tst.sh &>/dev/null
# . "$dir"/_flow_tst.sh &>res

# cd "$dir"/use/ || qq_exit

# ./main.bexe &>res

#? if res, pre dirs -> diff -qr | diff -r

flag=1
if ! diff -rq "$dir"/_pre "$dir"/_res >/dev/null; then
    flag=0
fi

if [ 0 -eq "$flag" ]; then
    echo "ANY in file://$dir fail" >&2
    diff -r "$dir"/_pre "$dir"/_res >&2
    return 1
else
    echo "ALL in $dir true"
    return 0
fi

cd "$idir"

unset filename