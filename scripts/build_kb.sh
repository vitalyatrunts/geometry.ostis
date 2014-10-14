#!/bin/bash
export LD_LIBRARY_PATH=../sc-machine/bin
if [ ! -d "../kb.bin" ]; then
    mkdir ../kb.bin
fi

stage()
{
    echo -en "\e[1;32m"$1"...\e[0m\n"
}

stage "Build core"
../sc-machine/bin/sc-builder -f -c -i ../ims.ostis.kb -o ../kb.bin -s ../config/sc-web.ini -e ../sc-machine/bin/extensions
stage "Build geometry"
../sc-machine/bin/sc-builder -f  -i ../kb -o ../kb.bin -s ../config/sc-web.ini -e ../sc-machine/bin/extensions
