#!/usr/bin/env bash
filename=${PLT_PATH}/.d/.arb/bsh.arb/isn_space__.ram/.grot/isn_space__tst/_flow_tst.sh
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
echo "isn_space__ \"f\"" >>res
if isn_space__ "f"; then echo "+"; else echo "-"; fi >>res
echo "isn_space__ \"fcdssd\"" >>res
if isn_space__ "fcdssd"; then echo "+"; else echo "-"; fi >>res
echo "isn_space__ \"f \"" >>res
if isn_space__ "f "; then echo "+"; else echo "-"; fi >>res
echo "isn_space__ \"f csd  \"" >>res
if isn_space__ "f csd  "; then echo "+"; else echo "-"; fi >>res
echo "isn_space__ \"\"" >>res
if isn_space__ ""; then echo "+"; else echo "-"; fi >>res
echo "isn_space__ " >>res
if isn_space__; then echo "+"; else echo "-"; fi >>res
echo "isn_space__ \"f\" \"f\" " >>res
if isn_space__ "f" "f"; then echo "+"; else echo "-"; fi >>res

# cr_tst_dir_ <dat &>>res

#{body_sh}
#?-------------------------------------
#?----------------------------------------------------
cd "$idir"
unset filename
unset PW
unset idir
#{ish}
