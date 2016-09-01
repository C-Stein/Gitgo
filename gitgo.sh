#!/bin/bash

# This script clears the terminal, displays a greeting and gives information

#define a path so the script can be run from anywhere
export PATH="$PATH:~/scripts/gitgo"

#clone a github repo

echo "the repo is $1"

git clone $1

REPO=$1


#use regex to doctor the previous argument
echo "length of argument is" ${#REPO} 

  #remove the last 4 characters
GIT=.git
DIRECTORY1=${REPO%$GIT}

  #remove everything up to the fourth slash

#FOURTHSLASH=
DIRECTORY=${DIRECTORY1#h*//}
DIRECTORY=${DIRECTORY#g*/}
DIRECTORY=${DIRECTORY#*/}

echo "maybe the directory is $DIRECTORY"

#cd into directory based on doctored argument
cd $DIRECTORY

#checkout quiz branch?
git checkout quiz

#npm install
npm install

st .


echo "this is home: $HOME"

