#!/bin/bash

#. "$HOME/.bashrc"
#! ${PATH_COMMUNIS}/Deploy_store/.qa/. => "${PLT_PATH}"/.d/.

filename="${COMMUNIS_PATH}/Deploy_store/.qa/.config/env.sh"

echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

unset filename
NET_MAIN_GIT_REPO="github.com:legioner9"

COMMUNIS_PATH="${REPO_PATH}"/communis
#! depr PATH_OS="${COMMUNIS_PATH}/Deploy_store"
PATH_OS="${COMMUNIS_PATH}/Deploy_store"
PATH_FN="${PATH_OS}/.qa/main_repo_fn"  # path to pln
PATH_TAG="${PATH_FN}/_config/agno_tag" # path to tag tree
TSH_book_path="${HOME}/ProjectRepo_2/_repo/BOOK"

#! PATH_COMMUNIS depr
PATH_COMMUNIS=${COMMUNIS_PATH}

PATH_MY_ONE=/run/media/${USER}/MY_ONE
PATH_TOSHIBA_EXT=/run/media/${USER}/TOSHIBA_EXT
PATH_TOSH=/run/media/${USER}/TOSH

BASH_USER="${COMMUNIS_PATH}/Deploy_store/.qa/lib/user"

PATH_GIT="${COMMUNIS_PATH}"
PATH_TST_FILE="${PLT_PATH}"/.d/.config/.tst
PATH_ENV_FILE="${PLT_PATH}"/.d/.config/env.sh

LIST3_BCKP_GITPUSH="${PLT_PATH}"/.d/.lists/bckp_gitpush.list3

CEXEC_PROJECT_DIR="${COMMUNIS_PATH}/Deploy_store/.qa/main_repo_fn/dir_c_/_c_/_exec"

MAINEDITOR="codium"

#? for rebase fn to plt; after copy to plt rename do that: PATH_MAIN_REPO_FN_DIR=${PLT_PATH}"/actio
PATH_MAIN_REPO_FN_DIR="${COMMUNIS_PATH}/Deploy_store/.qa/main_repo_fn"

#? .args .canons  .config .exl .flumen_tempus .ifs .insert .lists .man .pullsh  .puml .tml  .tst  .var  .vexillum  .warg
PATH_ARGS_DIR="${PLT_PATH}"/.d/.args
PATH_CANONS_DIR="${PLT_PATH}"/.d/.canons
PATH_CONFIG_DIR="${PLT_PATH}"/.d/.config
PATH_EXL_DIR="${PLT_PATH}"/.d/.exl
PATH_FLUMEN_TEMPUS_DIR="${PLT_PATH}"/.d/.flumen_tempus
PATH_IFS_DIR="${PLT_PATH}"/.d/.ifs
PATH_INSERT_DIR="${PLT_PATH}"/.d/.insert
PATH_LISTS_DIR="${PLT_PATH}"/.d/.lists
PATH_MAN_DIR="${PLT_PATH}"/.d/.man
PATH_PULLSH_DIR="${PLT_PATH}"/.d/.pullsh
PATH_PUML_DIR="${PLT_PATH}"/.d/.puml
PATH_TML_DIR="${PLT_PATH}"/.d/.tml
PATH_MUL_DIR="${PLT_PATH}"/.d/.mul
PATH_TST_DIR="${PLT_PATH}"/.d/.tst
PATH_VAR_DIR="${PLT_PATH}"/.d/.var
PATH_VEXILLUM_DIR="${PLT_PATH}"/.d/.vexillum
PATH_WARG_DIR="${PLT_PATH}"/.d/.warg
PATH_FS_STANDARTS_AX_DIR="${PLT_PATH}"/.d/.fs_standarts.ax
PATH_POT_DIR="${PLT_PATH}"/.d/.pot
PATH_READ_DIR="${PLT_PATH}"/.d/.read
PATH_SAL_AX_DIR="${PLT_PATH}"/.d/.sal.ax
PATH_NID_DIR="${PLT_PATH}"/.d/.nid
PATH_RPN_DIR="${PLT_PATH}"/.d/.rpn
PATH_CPL_DIR="${PLT_PATH}"/.d/.cpl

PATH_CURR_REPO="${HOME}/REPOBARE/_repo"

RETURN_WITH_QQ_EXIT=1
RETURN_WITH_QQ_PAUSE=2
RETURN_WITH_ECHO=3
RETURN_WITH_EXIT_1=4
RETURN_1=5

QQ_EXIT=0

# nid_nid='${PLT_PATH}/.d/.nid/mall.nid'
# nid_body='${FN_SAL_DIR}/${FNN}.body.sh'
