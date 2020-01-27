mkdir ~/bin
cp project.sh ~/bin
cat >> ~/.bash_profile << EOF
alias project='sh ~/bin/project.sh'
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin:$HOME/bin"
EOF
source ~/.bash_profile