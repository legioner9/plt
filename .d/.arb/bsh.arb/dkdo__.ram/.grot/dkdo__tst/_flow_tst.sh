#!/usr/bin/env bash
filename=${PLT_PATH}/.d/.arb/bsh.arb/dkdo__.ram/.grot/dkdo__tst/_flow_tst.sh
# echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file
PW=$(pwd)
idir="$(dirname ${filename})"
cd "${idir}" || {
    echo "${idir} not dir" >&2
    return 1
}
#?----------------------------------------------------
#?-------------------------------------

# : >res

dkdo__ file:///home/st/REPOBARE/_repo/NDocker/_doc/docs.docker.com/compose/history/index.html
dkdo__ https://docs.docker.com/compose/intro/history/

# cr_tst_dir_ <dat &>>res

#{body_sh}
#?-------------------------------------
#?----------------------------------------------------
cd "$idir"
unset filename
unset PW
unset idir
#{ish}
