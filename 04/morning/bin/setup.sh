#!/bin/bash

mkdir ~/bin
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin:$HOME/bin"
cp project.sh ~/bin
alias project='sh ~/bin/project.sh'