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
   rm *.zip &> /dev/null
   rm *.gz &> /dev/null
   wget $2
   tar xvf *.tar.*z 2> /dev/null || unzip *.zip 2> /dev/null 
   #|| installDEB *.deb
}

### Install APT packages
apt "wget"
apt "git"
git config --global user.email "t.ericsson@gmail.com"
git config --global user.name "Tobias Ericsson"

apt "curl"
apt "xz-utils"
apt "vim"
apt "vlc"
apt "autojump"

### Install SNAP packages

have "snap" || (sudo snap remove vscode && sudo snap install code --classic)
have "snap" || have "groovy" || (sudo snap remove groovy && sudo snap install groovy --classic)
have "snap" || have "go" || (sudo snap install go --classic)

### Fetch Archived Programs

#### Java aug 2019
aptRemove java
filepath="https://download.java.net/java/GA/jdk11/9/GPL/openjdk-11.0.2_linux-x64_bin.tar.gz"
#filepath="https://download.java.net/java/GA/jdk10/10.0.2/19aef61b38124481863b1413dce1855f/13/openjdk-10.0.2_linux-x64_bin.tar.gz"
haveProgram "java" || downloadProgram "java" ${filepath}

#### Groovy
#filepath="https://dl.bintray.com/groovy/maven/apache-groovy-sdk-2.5.2.zip"
#haveProgram "groovy" || downloadProgram "groovy" ${filepath}

#### Maven aug 2019
filepath="http://apache.mirrors.spacedump.net/maven/maven-3/3.6.1/binaries/apache-maven-3.6.1-bin.zip"
haveProgram "maven" || downloadProgram "maven" ${filepath}

### Node aug 2019
aptRemove nodejs
filepath="https://nodejs.org/dist/v12.8.1/node-v12.8.1-linux-x64.tar.gz"
haveProgram "node" || downloadProgram "node" ${filepath}

#### Gradle aug 2019
filepath="https://services.gradle.org/distributions/gradle-5.6-bin.zip"
haveProgram "gradle" || downloadProgram "gradle" ${filepath}

#### Idea aug 2019
filepath="https://download.jetbrains.com/idea/ideaIC-2019.2.tar.gz"
haveProgram "idea" || downloadProgram "idea" ${filepath}

### Install DEB packages

#### VS Code
#filepath="https://go.microsoft.com/fwlink/?LinkID=760868"
#filepath="https://az764295.vo.msecnd.net/stable/493869ee8e8a846b0855873886fc79d480d342de/code_1.26.1-1534444688_amd64.deb"
#haveProgram "vscode" || downloadProgram "vscode" ${filepath}



