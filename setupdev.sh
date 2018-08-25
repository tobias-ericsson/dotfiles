#!/bin/bash

function apt() {
   echo $1
   isInstalled $1 || sudo apt-get install $1
}

function isInstalled() {	
   dpkg -s $1 &> /dev/null
}

function have() {
   which $1 &> /dev/null
}

function haveProgram() {
   echo $1
   dir="${HOME}/Program/$1"
   ls ${dir}/* &> /dev/null
}

function downloadProgram() {
   dir="${HOME}/Program/$1"
   mkdir -p $dir
   cd $dir
   wget $2
   tar xvf *.tar.gz 2> /dev/null || unzip *.zip
}

### Install APT packages
apt "wget"
apt "git"
apt "curl"

### Fetch Archived Programs
filepath="https://download.java.net/java/GA/jdk10/10.0.2/19aef61b38124481863b1413dce1855f/13/openjdk-10.0.2_linux-x64_bin.tar.gz"
haveProgram "java" || downloadProgram "java" $filepath
filepath="https://dl.bintray.com/groovy/maven/apache-groovy-sdk-2.5.2.zip"
haveProgram "groovy" || downloadProgram "groovy" $filepath



