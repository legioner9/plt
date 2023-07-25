#!/bin/bash 
#! global variables from ARGSP: name_fn_, dir_fns_, flow_

${_wrp2_} mkdir -p --_xnd "${PWD}/dir_${name_fn_}"/.d/.sal

${_wrp2_} cp -rf --_xxf "${tml_dir}/file.ax.sh" --_xnf "${PWD}/dir_${name_fn_}/${name_fn_}.ax.sh"

# ${_wrp2_} cp -rf --_xxd "${tml_dir}/.d" --_xnd "${PWD}/dir_${name_fn_}/.d"

${_wrp2_} cp -rf --_xxf "${tml_dir}/.d/.sal/file.man" --_xnf "${PWD}/dir_${name_fn_}/.d/.sal/${name_fn_}.man"

${_wrp2_} cp -rf --_xxf "${tml_dir}/.d/.sal/file.lst" --_xnf "${PWD}/dir_${name_fn_}/.d/.sal/${name_fn_}.lst"

${_wrp2_} cp -rf --_xxf "${tml_dir}/.d/.sal/file.puml" --_xnf "${PWD}/dir_${name_fn_}/.d/.sal/${name_fn_}.puml"

${_wrp2_} cp -rf --_xxf "${tml_dir}/.d/.sal/file.body.sh" --_xnf "${PWD}/dir_${name_fn_}/.d/.sal/${name_fn_}.body.sh"

${_wrp2_} cp -rf --_xxf "${tml_dir}/.d/.sal/file.h.sh" --_xnf "${PWD}/dir_${name_fn_}/.d/.sal/${name_fn_}.h.sh"

${_wrp2_} cp -rf --_xxd "${tml_dir}/_file" --_xnd "${PWD}/dir_${name_fn_}/_${name_fn_}"


