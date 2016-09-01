#!/bin/bash

#in order to run this script from any directory without typing out the full path
# sudo ln -s /full/path/to/file/gitgo.sh /usr/local/sbin/gitgo

#clone a github repo

git clone $1

#use regex to doctor the previous argument
REPO=$1

  #remove the last 4 characters
GIT=.git
DIRECTORY1=${REPO%$GIT}

  #remove everything up to the fourth slash

DIRECTORY=${DIRECTORY1#h*//}
DIRECTORY=${DIRECTORY#g*/}
DIRECTORY=${DIRECTORY#*/}

#cd into directory based on doctored argument
cd $DIRECTORY

#checkout quiz branch
git checkout quiz

#npm install
npm install

#open in sublimetext
#st is an alias, ymmv
st .
