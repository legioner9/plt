#!/bin/bash

dir_tst=${REPO_PATH}/plt/.d/.arb/bsh.arb/t2c__.ram/.grot/t2c__tst/dir_tst

mkdir ${dir_tst}/dir.d
touch ${dir_tst}/dir.d/0
echo "this file.f" > ${dir_tst}/file.f

ln -s ${dir_tst}/file.f ${dir_tst}/file.f.lns
ln ${dir_tst}/file.f ${dir_tst}/file.f.lnh
mkfifo ${dir_tst}/file.fifo

nc -lU ${dir_tst}/socket.sock