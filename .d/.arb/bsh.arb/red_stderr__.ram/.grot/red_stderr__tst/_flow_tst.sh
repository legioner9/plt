#!/usr/bin/env bash
filename=${PLT_PATH}/.d/.arb/bsh.arb/red_stderr__.ram/.grot/red_stderr__tst/_flow_tst.sh
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

echo -e "${HLIGHT}--- red_stderr__ cd ~ ---${NORMAL}" &>>res #start files
red_stderr__ cd ~ &>>res
echo -e "${HLIGHT}--- red_stderr__ cd ~/x ---${NORMAL}" &>>res #start files
red_stderr__ cd ~/x &>>res



# cr_tst_dir_ <dat &>>res

#{body_sh}
#?-------------------------------------
#?----------------------------------------------------
cd "$idir"
unset filename
unset PW
unset idir
#{ish}
