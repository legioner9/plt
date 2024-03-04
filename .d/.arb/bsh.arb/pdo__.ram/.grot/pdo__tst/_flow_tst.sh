#!/usr/bin/env bash
filename=${PLT_PATH}/.d/.arb/bsh.arb/pdo__.ram/.grot/pdo__tst/_flow_tst.sh
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

# about.formats.php.html
# dir_arb=${REPO_PATH}/NPhp/.d/.arb/php_doc.arb
rm -r ${REPO_PATH}/NPhp/.d/.arb/php_doc.arb/about.formats.php.html.ram
pdo__ "about.formats"
# cr_tst_dir_ <dat &>>res
# edit_ ${REPO_PATH}/NPhp/.d/.arb/php_doc.arb/about.formats.php.html.ram
#{body_sh}
#?-------------------------------------
#?----------------------------------------------------
cd "$idir"
unset filename
unset PW
unset idir
#{ish}
