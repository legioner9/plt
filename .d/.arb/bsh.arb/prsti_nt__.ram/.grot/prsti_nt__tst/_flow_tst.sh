#!/usr/bin/env bash
filename=${PLT_PATH}/.d/.arb/bsh.arb/prsti_nt__.ram/.grot/prsti_nt__tst/_flow_tst.sh
# echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file
PW=$(pwd)
idir="$(dirname ${filename})"
cd "${idir}" || {
    echo "${idir} not dir" >&2
    return 1
}
#?----------------------------------------------------
#?-------------------------------------
# . /home/st/REPOBARE/_repo/NBash/.arb/util/docker.ram/.grot/game_badtry/exa.d/exa_6.d/exa_6.sh

: >res
echo -e "${HLIGHT}--- dk_pa__ | prsti_nt__ ---${NORMAL}" #start files
dk_pa__ | prsti_nt__

echo -e "${HLIGHT}--- dk_pa__ | prsti_nt__ a ---${NORMAL}" #start files
dk_pa__ | prsti_nt__ a

echo -e "${HLIGHT}--- dk_pa__ | prsti_nt__ 0 ---${NORMAL}" #start files
dk_pa__ | prsti_nt__ 0

echo -e "${HLIGHT}--- dk_pa__ | prsti_nt__ 0  pyramid---${NORMAL}" #start files
dk_pa__ | prsti_nt__ 0 pyramid

echo -e "${HLIGHT}--- dk_pa__ | prsti_nt__ 0  pyram---${NORMAL}" #start files
dk_pa__ | prsti_nt__ 0 pyram

echo -e "${HLIGHT}--- dk_pa__ | prsti_nt__ 0  pyramx---${NORMAL}" #start files
dk_pa__ | prsti_nt__ 0 pyramx

# dk_pa__ | prsti_nt__ 0
# echo | prsti_nt__
# cr_tst_dir_ <dat &>>res

#{body_sh}
#?-------------------------------------
#?----------------------------------------------------
cd "$idir"
unset filename
unset PW
unset idir
#{ish}
