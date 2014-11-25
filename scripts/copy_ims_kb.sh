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
mkdir ims.ostis.kb_copy/documentation/section_unificated_models
cp -a ims.ostis.kb/documentation/section_unificated_models ims.ostis.kb_copy/documentation/section_unificated_models
mkdir ims.ostis.kb_copy/documentation/section_unificated_semantic_network_and_representation
cp -a ims.ostis.kb/documentation/section_unificated_semantic_network_and_representation ims.ostis.kb_copy/documentation/section_unificated_semantic_network_and_representation
mkdir ims.ostis.kb_copy/documentation/section_metasystem_ostis
mkdir ims.ostis.kb_copy/documentation/section_metasystem_ostis/section_ims_ostis_sub_systems_for_components_development/
cp -a ims.ostis.kb/documentation/section_metasystem_ostis/section_ims_ostis_sub_systems_for_components_development/ ims.ostis.kb_copy/documentation/section_metasystem_ostis/section_ims_ostis_sub_systems_for_components_development/
mkdir ims.ostis.kb_copy/ui
cp -a ims.ostis.kb/ui ims.ostis.kb_copy/ui
mkdir ims.ostis.kb_copy/to_check
cp -a ims.ostis.kb/to_check ims.ostis.kb_copy/to_check

cd -
