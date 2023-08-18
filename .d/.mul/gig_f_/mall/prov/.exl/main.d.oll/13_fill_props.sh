#!/bin/bash

dir_help=${dir_fns_}/dir_${name_fn_}/.d.ax/.sal.ax/${name_fn_}.d.h

echo "DATE: $(date +"%Y%m%d%H%M")" > ${dir_help}/date.insert

echo "DFNS: ${dir_fns_}" > ${dir_help}/dfns.insert

${_ehh} ${_upg_path_} ${dir_help}/dfns.insert

echo "NAME: ${name_fn_}" > ${dir_help}/name.insert

echo "GRAD: ${grad_}" > ${dir_help}/grad.insert

echo "RTFN: ${name_fn_} ${name_fn_}c_ ${name_fn_}g_" > ${dir_help}/rtfn.insert