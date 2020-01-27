#!/bin/bash

name=$1


mkdir $name  # create project folder
cd $name  # enter the folder
touch README.md  # create a file
echo "# $name" > README.md  # Add content to a file


# Create development files
touch index.html
mkdir js
touch js/index.js
mkdir css
touch css/index.css
mkdir img

# Setup our index.html
cat > index.html << EOF
<!doctype html>
<html lang="en">
  <head>
    <title>$name</title>
    <link rel="stylesheet" href="css/index.css">
  </head>
  <body>

    <script src="js/index.js"></script>
  </body>
</html>
EOF

git init  # Initialize a repo
touch .gitignore  # Create ignore file
echo ".DS_Store" > .gitignore  # Write the ignore file
git add --all  # Stage all files
git commit -m "first commit"  # Our first commit



# open file in "code"