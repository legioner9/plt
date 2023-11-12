#!/usr/bin/env bash
filename=${PLT_PATH}/actio/mall/dir_gig_mall_v2_/.d.ax/.self_tst/dir_1/dis/_flow_tst.sh
# echo -e "${HLIGHT}---start file://$filename ---${NORMAL}" # start file
PW=$(pwd)
idir="$(dirname ${filename})"
cd "${idir}" || {
    echo "${idir} not dir" >&2
    return 1
}
#?----------------------------------------------------
#?-------------------------------------

    res_actio=${PLT_PATH}/actio/mall/dir__tmp_
    res_sal=${PLT_PATH}/.d/.sal.ax/_tmp_

    pre_actio=${PLT_PATH}/actio/mall/dir_gig_mall_v2_/.d.ax/.self_tst/dir_1/dis/res_exa_1/actio/dir__tmp_
    pre_sal=${PLT_PATH}/actio/mall/dir_gig_mall_v2_/.d.ax/.self_tst/dir_1/dis/res_exa_1/sal/_tmp_
    # /home/st/REPOBARE/_repo/plt/actio/mall/dir_gig_mall_v2_/.d.ax/.self_tst/dir_1/dis/res_exa_1

    # rm -rfv ${res_actio}
    # rm -rfv ${res_sal}

    # gig_mall_v2_ _tmp_

    if ! diff -r ${res_actio} ${pre_actio} ; then
        plt_pause "EXEC_FAIL diff file://${res_actio} file://${pre_actio}"
    else
        echo -e "${BLUE}--- EXEC_TRUE diff file://${res_actio} file://${pre_actio} ---${NORMAL}" #sistem info mesage
    fi

    if ! diff -r ${res_sal} ${pre_sal} ; then
        plt_pause "EXEC_FAIL diff file://${res_sal} file://${pre_sal}"
    else
        echo -e "${BLUE}--- EXEC_TRUE diff file://${res_sal} file://${pre_sal} ---${NORMAL}" #sistem info mesage
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
