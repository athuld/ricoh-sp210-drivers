#!/bin/bash


filterPath="/usr/lib/cups/filter"
rasterName="rastertolilo"
ppdPath="/usr/share/cups/model/ricoh"

# Create dir if it doesn't exist

mkdir -p $ppdPath 

# Copying filter and ppd

echo -e "\nCopying required files....."

cp tmp/x86_64/$rasterName $filterPath/$rasterName

cp ppd/* $ppdPath

chown root:root $filterPath/$rasterName

chmod 755 $filterPath/$rasterName

echo -e "\nDone!"
