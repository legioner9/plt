#!/bin/bash

dir_tst=${REPO_PATH}/plt/.d/.arb/bsh.arb/isn_d_or_f__.ram/.grot/isn_d_or_f__tst/dir_tst

nc -lU ${dir_tst}/socket.sock
ln -s ${dir_tst}/file.f ${dir_tst}/file.f.lns
ln ${dir_tst}/file.f ${dir_tst}/file.f.lnh
mkfifo ${dir_tst}/file.fifo