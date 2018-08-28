#!/bin/bash

function have() {
   which $1 &> /dev/null
}

function printVersion() {
   which $1
}

function print() {
   have $1 && echo "$1" && printVersion $1 && echo ""
}

print java
print groovy
print mvn
print gradle
print node
print npm
print idea
print code
print tldr

