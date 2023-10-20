#!/bin/bash

if ! [ -f "$HOME/.ssh/id_rsa" ]; then

    echo "continue with create keys from zip (y/n)"
    y2=""
    read y2

    if [ ${y2} == "y" ]; then
        cp -rfv ${PPWW_654fe0b9ed}/.zip/read.zip ${HOME}
        cp -rf ${HOME}/.ssh ${HOME}/.ssh~
        rm -rf ${HOME}/.ssh
        unzip ${HOME}/read.zip -d ${HOME}
        file ${HOME}/.ssh
        # continue
        #		else
        #			echo "continue with create keys from ssh generate (y/n)"
        #			y3=""
        #			read y3
        #			[ "${y3}" == "y" ] && ! [ $y2 == "y" ]; then
        # return 0 #! deb
        #		    ssh-keygen -t rsa -b 4096 -C "legioner9@inbox.ru"
    fi

    eval "$(ssh-agent -s)"
    ssh-add ~/.ssh/id_rsa
fi
