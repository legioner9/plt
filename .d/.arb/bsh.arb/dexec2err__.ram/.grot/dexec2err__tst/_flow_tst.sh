#!/usr/bin/env bash
filename=${PLT_PATH}/.d/.arb/bsh.arb/dexec2err__.ram/.grot/dexec2err__tst/_flow_tst.sh
# echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file
PW=$(pwd)
idir="$(dirname ${filename})"
cd "${idir}" || {
    echo "${idir} not dir" >&2
    return 1
}
#?----------------------------------------------------
#?-------------------------------------

: >res

if ! dexec2err__ for_exec.d; then
    echo "FAIL_EXEC:  dexec2err__ for_exec.d"
fi

# cr_tst_dir_ <dat &>>res

#{body_sh}
#?-------------------------------------
#?----------------------------------------------------
cd "$idir"
unset filename
unset PW
unset idir
#{ish}
