#!/bin/bashs

sudo epm full-upgrade --auto -y
sudo apt-get install apt-repo apt rpm install telegram-desktop node python gcc++ wget make gitk git git-gui mate-default -y

sudo epm ei

sudo epm play yandex-browser -y
sudo epm play yandex-disk -y
