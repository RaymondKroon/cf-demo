#!/usr/bin/env bash

container=$1
dir=$2

curdir=$(pwd);

cd $dir
#for f in * ; do
#
#    TEMP=`mktemp -d`
#
#    unzip $f -d $TEMP
#    cd $TEMP

    for gml in *.gml ; do
         zip "$gml.zip" "$gml"
         az storage blob upload --container-name $container --file "$gml.zip" --name "$gml.zip"
#         cd -
#         rm -r $TEMP
    done

#done

cd $curdir