#!/bin/bash

dir_help=${dir_fns_}/dir_${name_fn_}/.d.ax/.sal.ax/${name_fn_}.d.h

echo "DATE: $(date +"%Y%m%d%H%M")" > ${dir_help}/date.insert

echo "DFNS: ${dir_fns_}" > ${dir_help}/dfns.insert

echo "NAME: ${name_fn_}" > ${dir_help}/name.insert