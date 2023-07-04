#!/bin/bashs

sudo epm full-upgrade --auto -y
sudo epm autoremove -y
sudo epm autoremove --direct
sudo apt-get install apt-repo apt rpm vim-X11 telegram-desktop node python gcc++ wget make gitk git git-gui mate-default -y

sudo epm ei -y

sudo epm play yandex-browser -y
sudo epm play yandex-disk -y
