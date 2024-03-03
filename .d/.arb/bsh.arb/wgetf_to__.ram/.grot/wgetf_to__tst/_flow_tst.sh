#!/usr/bin/env bash
filename=${PLT_PATH}/.d/.arb/bsh.arb/wgetf_to__.ram/.grot/wgetf_to__tst/_flow_tst.sh
# echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file
PW=$(pwd)
idir_refw53425="$(dirname ${filename})"
cd "${idir_refw53425}" || {
    echo "${idir_refw53425} not dir" >&2
    return 1
}
#?----------------------------------------------------
#?-------------------------------------

: >${idir_refw53425}/res

rm -rf tst_dir
mkdir tst_dir
rm -rf res_dir
mkdir res_dir

cd tst_dir || plt_exit

wgetf_to__ https://github.com/metarhia/impress/archive/refs/heads/master.zip "${idir_refw53425}"/res_dir/that_result.zip
wgetf_to__ https://github.com/metarhia/impress/archive/refs/heads/master.zip 

wgetf_to__ https://github.com/metarhia/impress/archive/refs/heads/master.zip "${idir_refw53425}"x/res_dir/that_result.zip
wgetf_to__ https://github.com/metarhia/impressx/archive/refs/heads/master.zip 

# cr_tst_dir_ <dat &>>res

#{body_sh}
#?-------------------------------------
#?----------------------------------------------------
cd "$idir_refw53425"
unset filename
unset PW
unset idir
#{ish}
