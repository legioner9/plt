#!/bin/bash

#. "$HOME/.bashrc"

filename=${PLT_PATH}/actio/dir_fp_f_/fp_f_extst/extst_1/start_exec.tst

# echo -e "${HLIGHT}---start file://$filename with args: $@ ---${NORMAL}" # start file

# idir=$(pwd)
rdir="$(prs_f -d $filename)"
# gname="$(prs_f -n $filename)" # name without .ext
# cd "$(prs_f -d $filename)" || qq_exit "$(prs_f -d $filename) not found"

# export _edeb=echo_$gname
# export echo_$gname=0

# export _debug=debug_$gname
# export debug_$gname=0

# garg_ $gname $@ 1>/dev/null

# echo_deb_ ${!_edeb} "cntl echo_deb_ mode in $gname"
# if [ -n ${!_debug} ] && [ ${!_debug} -eq 1 ]; then
#     echo "DEBUG MODE in $gname"
# fi

#{header}

#----------------------------------------------------------------------
#-------------------------------------
#-------------------------------
# up_err_ extst ${PLT_PATH}/actio/dir_fp_f_/fp_f_extst/extst_1/start_exec.list 1>/dev/null
# errno=$?
if ! up_err_ extst ${PLT_PATH}/actio/dir_fp_f_/fp_f_extst/extst_1/start_exec.list 1>/dev/null; then
    echo "ANY in file://$rdir fail" >&2
    return 1
else
    echo "ALL in file://$rdir true"
    return 0
fi
#{body}
#-------------------------------
#-------------------------------------
#----------------------------------------------------------------------

cd "$idir"

unset filename
