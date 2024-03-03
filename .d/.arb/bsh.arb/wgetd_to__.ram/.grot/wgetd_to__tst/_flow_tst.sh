#!/usr/bin/env bash
filename=${PLT_PATH}/.d/.arb/bsh.arb/wgetd_to__.ram/.grot/wgetd_to__tst/_flow_tst.sh
# echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file
PW=$(pwd)
idir_refw53s425="$(dirname ${filename})"
cd "${idir_refw53s425}" || {
    echo "${idir_refw53s425} not dir" >&2
    return 1
}
#?----------------------------------------------------
#?-------------------------------------

: >"${idir_refw53s425}"/res

rm -rf tst_dir
mkdir tst_dir
rm -rf res_dir
mkdir res_dir

cd tst_dir || plt_exit

# wgetd_to__ https://www.gnu.org/software/wget/manual/ "${idir_refw53s425}"/res_dir 1

# wgetd_to__ https://www.gnu.org/software/wget/manual/ 

# wgetd_to__ https://www.gnu.org/software/wget/manual/ "${idir_refw53s425}x"/res_dir 10

# wgetd_to__ https://www.gnu.org/software/wget/manualx/ 

wgetd_to__ https://example.com "${idir_refw53s425}"/res_dir 1

wgetd_to__ https://example.com

wgetd_to__ https://example.com "${idir_refw53s425}x"/res_dir 10

wgetd_to__ https://example__.com 


# cr_tst_dir_ <dat &>>res

#{body_sh}
#?-------------------------------------
#?----------------------------------------------------
cd "$idir"
unset filename
unset PW
unset idir
#{ish}
