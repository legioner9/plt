#!/bin/bash

file_name=${PLT_PATH}/actio/mall/dir_pzip_to_/.d.ax/.mdeb/.cntl/_start_pzip_to_mdeb.sh
echo -e "${GREEN}\$file_name = file://$file_name${NORMAL}" #print variable

this_dir=$(dirname "${file_name}")
this_name=$(basename "${file_name}")
#
echo -e "${HLIGHT}--- . file://${this_dir}/pzip_to_mdeb.sh ---${NORMAL}" #start files
. ${this_dir}/pzip_to_mdeb.sh
pzip_to_mdeb "$1"
#{body}
#{init_body}