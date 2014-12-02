#!/bin/bash
export LD_LIBRARY_PATH=../sc-machine/bin
if [ ! -d "../ims.ostis.kb_copy" ]; then
    mkdir ../ims.ostis.kb_copy
else
    rm -rf ../ims.ostis.kb_copy/*
fi

cd ../

mkdir ims.ostis.kb_copy/documentation/
cp ims.ostis.kb/documentation/doc_technology_ostis.scs ims.ostis.kb_copy/documentation/doc_technology_ostis.scs
cp -a ims.ostis.kb/documentation/section_unificated_models ims.ostis.kb_copy/documentation/
cp -a ims.ostis.kb/documentation/section_unificated_semantic_network_and_representation ims.ostis.kb_copy/documentation/
mkdir ims.ostis.kb_copy/documentation/section_metasystem_ostis
cp -a ims.ostis.kb/documentation/section_metasystem_ostis/section_ims_ostis_sub_systems_for_components_development/ ims.ostis.kb_copy/documentation/section_metasystem_ostis
cp -a ims.ostis.kb/ui ims.ostis.kb_copy
cp -a ims.ostis.kb/to_check ims.ostis.kb_copy

rm ims.ostis.kb_copy/ui/menu/ui_menu_na_view_kb.scs
rm ims.ostis.kb_copy/ui/menu/ui_menu_na_keynodes_for_beginners.scs
rm ims.ostis.kb_copy/ui/menu/ui_main_menu.scs
rm ims.ostis.kb_copy/ui/menu/ui_menu_na_keynodes.scs

cd -
