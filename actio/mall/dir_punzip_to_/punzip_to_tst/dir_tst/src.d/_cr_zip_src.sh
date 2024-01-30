#!/bin/bash

dir_tst=${REPO_PATH}/plt/actio/mall/dir_punzip_to_/punzip_to_tst/dir_tst

cd ${dir_tst}/src.d || plt_exit

rm -rv in_src.d.zip
rm -v src.file.zip

zip -P ${PD_READ} -r in_src.d.zip in_src.d
zip -P ${PD_READ} src.file.zip src.file