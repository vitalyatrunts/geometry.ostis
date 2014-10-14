#!/bin/bash

red="\e[1;31m"  # Red B
blue="\e[1;34m" # Blue B
green="\e[0;32m"

bwhite="\e[47m" # white background

bold = "\033[1m"
rst="\e[0m"     # Text reset

stage()
{
    echo -en "$blue[$1] $2...$rst\n"
}

clone_project()
{
    if [ ! -d "../$2" ]; then
        echo -en $green$bold"Clone $2$rst\n"
        git clone $1 ../$2
        git checkout $3
    else
        echo -en $green$bold"Update $2$rst\n"
        cd ../$2
        git remote update
        git checkout $3
        git merge origin/$3
        cd -
    fi
}

stage 1 "Clone projects"

clone_project https://github.com/deniskoronchik/sc-machine.git sc-machine master
clone_project https://github.com/deniskoronchik/sc-web.git sc-web dev
clone_project https://github.com/deniskoronchik/ims.ostis.kb.git ims.ostis.kb master

stage 2 "Prepare projects"

prepare()
{
    echo -en $green$1$rst"\n"
}

prepare "sc-machine"
cd ../sc-machine/scripts
./install_deps_ubuntu.sh
sudo ./install_redis_ubuntu.sh
./clean_all.sh
./make_all.sh
cd -

prepare "sc-web"
cd ../sc-web/scripts
./install_deps_ubuntu.sh
./prepare_js.sh
python build_components.py -i -a
cd -
echo -en $green"Copy server.conf"$rst"\n"
cp -f ../config/server.conf ../sc-web/server/


