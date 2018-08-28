#!/bin/bash

function apt() {
   echo $1
   isInstalled $1 || sudo apt-get -y install $1
}

function installDEB() {
   echo $1
   sudo dpkg -i $1
}

function isInstalled() {	
   dpkg -s $1 &> /dev/null
}

function have() {
   which $1 &> /dev/null
}

function haveProgram() {
   dir="${HOME}/Program/$1"
   ls ${dir}/* &> /dev/null
}

function aptRemove() {
   if isInstalled $1
   then
      sudo apt-get -y remove $1
      sudo apt-get -y purge $1
   fi
}

function downloadProgram() {
   dir="${HOME}/Program/$1"
   mkdir -p $dir
   cd $dir
   wget $2
   tar xvf *.tar.*z 2> /dev/null || unzip *.zip 2> /dev/null || installDEB *.deb
}

### Install APT packages
apt "wget"
apt "git"
apt "curl"
apt "xz-utils"

### Fetch Archived Programs

#### Java
aptRemove java
filepath="https://download.java.net/java/GA/jdk10/10.0.2/19aef61b38124481863b1413dce1855f/13/openjdk-10.0.2_linux-x64_bin.tar.gz"
haveProgram "java" || downloadProgram "java" ${filepath}


#### Groovy
filepath="https://dl.bintray.com/groovy/maven/apache-groovy-sdk-2.5.2.zip"
haveProgram "groovy" || downloadProgram "groovy" ${filepath}


#### Maven
filepath="http://apache.mirrors.spacedump.net/maven/maven-3/3.5.4/binaries/apache-maven-3.5.4-bin.zip"
haveProgram "maven" || downloadProgram "maven" ${filepath}

### Node
aptRemove nodejs
filepath="https://nodejs.org/dist/v8.11.4/node-v8.11.4-linux-x64.tar.xz"
haveProgram "node" || downloadProgram "node" ${filepath}

#### Gradle
filepath="https://services.gradle.org/distributions/gradle-4.9-bin.zip"
haveProgram "gradle" || downloadProgram "gradle" ${filepath}

#### Idea
filepath="https://download.jetbrains.com/idea/ideaIC-2018.2.2.tar.gz"
haveProgram "idea" || downloadProgram "idea" ${filepath}

### Install DEB packages

#### VS Code
#filepath="https://go.microsoft.com/fwlink/?LinkID=760868"
filepath="https://az764295.vo.msecnd.net/stable/493869ee8e8a846b0855873886fc79d480d342de/code_1.26.1-1534444688_amd64.deb"
haveProgram "vscode" || downloadProgram "vscode" ${filepath}



