#!/bin/bash


# If a name NOT was provided as a parameter, prompt for a name
# Else use the name provided as the first parameter ($1)
if [ -z $1 ]
then
  read -r -p ">>> Project name: " name
else
  name=$1
  echo "Project name: $name"
fi


# Check if the folder already exists here, if so, quit
if [ -d $name ]
then
  echo "$name already exists"
  exit 1
fi



# SETUP FOLDERS AND FILES

mkdir $name  # create the root folder
cd $name  # enter the root folder
echo "# $name" > README.md  # create a README with a heading
touch index.html  # create index.html
mkdir img  # add folders
mkdir css
mkdir js
touch css/index.css  # add folders
touch css/reset.css 
touch js/index.js

cat > index.html << EOF
<!doctype html>
<html lang="en">
  <head>
    <title>$name</title>
    <link rel="stylesheet" href="css/reset.css">
    <link rel="stylesheet" href="css/index.css">
  </head>
  <body>
    <script src="js/index.js"></script>
  </body>
</html>
EOF

cat > css/reset.css << EOF
body {
  margin: 0
}
EOF

echo "Setup of project $name was successful!"


# GIT REPOSITORY SETUP
read -r -p ">>> Make this a git repository [Y/n]? " repo
if [ $repo == "Y" ]
then
  git init
  git add --all
  git commit -m "first commit"
  
  read -r -p ">>> Paste remote url to setup and push [URL/n]? " remote
  if [ $remote != "n" ]
  then
    git remote add origin $remote
    git push -u origin master
  else
    echo "Repository created without remote"
  fi
else
  echo "No repository was created"
fi


# OPEN VSCODE FOR EDITING
echo "Opening VSCode. Have fun!"
code .  # Open vscode with this folder