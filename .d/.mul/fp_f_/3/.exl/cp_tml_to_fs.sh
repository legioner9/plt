#!/bin/bash 
#! global variables from ARGSP: name_fn_, dir_fns_, flow_

${_wrp2_} mkdir --_cnd "${PWD}/dir_${name_fn_}"

wrp2_ cp -rf --_xxf "${tml_dir}/f_f_" --_xnf "${PWD}/dir_${name_fn_}/${name_fn_}.sh"

wrp2_ cp -rf --_xxf "${tml_dir}/file.man" --_xnf "$PWD/dir_${name_fn_}/${name_fn_}.man"

wrp2_ cp -rf --_xxf "${tml_dir}/file.lst" --_xnf "$PWD/dir_${name_fn_}/${name_fn_}.lst"

wrp2_ cp -rf --_xxf "${tml_dir}/file.puml" --_xnf "$PWD/dir_${name_fn_}/${name_fn_}.puml"

wrp2_ cp -rf --_xxd "${tml_dir}/_00000" --_xnd "$PWD/dir_${name_fn_}/_${name_fn_}"

wrp2_ cp -rf --_xxd "${tml_dir}/.fn_env" --_xnd "$PWD/dir_${name_fn_}/.fn_env"
