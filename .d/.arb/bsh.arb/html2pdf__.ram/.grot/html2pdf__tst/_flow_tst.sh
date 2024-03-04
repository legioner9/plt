#!/usr/bin/env bash
filename=${PLT_PATH}/.d/.arb/bsh.arb/html2pdf__.ram/.grot/html2pdf__tst/_flow_tst.sh
# echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file
PW=$(pwd)
idir_fw543="$(dirname ${filename})"
cd "${idir_fw543}" || {
    echo "${idir_fw543} not dir" >&2
    return 1
}
#?----------------------------------------------------
#?-------------------------------------

: >"${idir_fw543}"/res

rm -rf tst_dir
cp -r _tst_dir/. tst_dir

cd tst_dir || plt_exit

# rm -rf dir_dist
# mkdir dir_dist
# rm dir_src/about.formats.php.html.pdf
# rm dir_src/that.pdf

cd dir_src || plt_exit

html2pdf__ about.formats.php.html
html2pdf__ about.formats.php.html that.pdf
html2pdf__ about.formats.php.html ../dir_dist
html2pdf__ about.formats.php.html ../dir_dist/that2.pdf

cd "${idir_fw543}"

tree tst_dir >"${idir_fw543}"/res

rm -rf tst_dir

# cr_tst_dir_ <dat &>>res

#{body_sh}
#?-------------------------------------
#?----------------------------------------------------
cd "$idir"
unset filename
unset PW
unset idir
#{ish}
