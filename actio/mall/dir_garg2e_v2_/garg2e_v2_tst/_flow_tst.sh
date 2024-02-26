#!/usr/bin/env bash
filename=${PLT_PATH}/actio/mall/dir_garg2e_v2_/garg2e_v2_tst/_flow_tst.sh
# echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file
PW=$(pwd)
idir_435dsfv="$(dirname ${filename})"
cd "${idir_435dsfv}" || {
    echo "${idir_435dsfv} not dir" >&2
    return 1
}
#?----------------------------------------------------
#?-------------------------------------

: >${idir_435dsfv}/res

echo  "garg2e_v2_ -a -b --af aff --bf bff" &>>res #sistem info mesage
echo  | garg2e_v2_ -a -b --af aff --bf bff &>>res 

echo  "garg2e_v2_ -rr --csa"  &>>res  #sistem info mesag
echo  | garg2e_v2_ -rr --csa &>>res 

echo  "garg2e_v2_ -rr --csa --ergre" &>>res  #sistem info mesag
echo  | garg2e_v2_ -rr --csa --ergre &>>res 

# cr_tst_dir_ <dat &>>res

#{body_sh}
#?-------------------------------------
#?----------------------------------------------------
cd "${idir_435dsfv}"
unset filename
unset PW
unset idir_435dsfv
#{ish}
