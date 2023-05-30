#!/bin/bash

#. "$HOME/.bashrc"
#! ${PATH_COMMUNIS}/Deploy_store/.qa/. => "${PLT_PATH}"/.d/.

filename="$HOME/start/communis/Deploy_store/.qa/.config/env.sh"

echo -e "${HLIGHT}---start file: $filename---${NORMAL}" # start file

unset filename
PATH_OS="${HOME}/start/communis/Deploy_store"
PATH_FN="${PATH_OS}/.qa/main_repo_fn"  # path to pln
PATH_TAG="${PATH_FN}/_config/agno_tag" # path to tag tree
TSH_book_path="${HOME}/ProjectRepo_2/_repo/BOOK"

PATH_COMMUNIS=${HOME}/start/communis
PATH_MY_ONE=/run/media/${USER}/MY_ONE
PATH_TOSHIBA_EXT=/run/media/${USER}/TOSHIBA_EXT
PATH_TOSH=/run/media/${USER}/TOSH

BASH_USER="${HOME}/start/communis/Deploy_store/.qa/lib/user"

PATH_GIT="${HOME}/start/communis"
PATH_TST_FILE="${PLT_PATH}"/.d/.config/.tst
PATH_ENV_FILE="${PLT_PATH}"/.d/.config/env.sh

LIST3_BCKP_GITPUSH="${PLT_PATH}"/.d/.lists/bckp_gitpush.list3

CEXEC_PROJECT_DIR="${PATH_COMMUNIS}/Deploy_store/.qa/main_repo_fn/dir_c_/_c_/_exec"

MAINEDITOR="codium"

#? for rebase fn to plt; after copy to plt rename do that: PATH_MAIN_REPO_FN_DIR=${PLT_PATH}"/.d/actio
PATH_MAIN_REPO_FN_DIR="${PATH_COMMUNIS}/Deploy_store/.qa/main_repo_fn"

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
PATH_TST_DIR="${PLT_PATH}"/.d/.tst
PATH_VAR_DIR="${PLT_PATH}"/.d/.var
PATH_VEXILLUM_DIR="${PLT_PATH}"/.d/.vexillum
PATH_WARG_DIR="${PLT_PATH}"/.d/.warg

PATH_CURR_REPO="${HOME}/REPOBARE/_repo"

RETURN_WITH_QQ_EXIT=1
RETURN_WITH_QQ_PAUSE=2
RETURN_WITH_ECHO=3
RETURN_WITH_EXIT_1=4
RETURN_1=5

QQ_EXIT=0
