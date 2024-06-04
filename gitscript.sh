#!/bin/bash
github_username="codedbyayesha"
github_email="its.kayesha@gmail.com"
repository_url="https://github.com/codedbyayesha/firstscript.git"

file_to_add="/home/k_ayesha/gitscript.sh "

read -p "Commit Message:" COMMIT_MESSAGE
#read -p "Collaborator's username:" COLLABORATOR_NAME

git config --global user.name "$github_username"
git config --global user.email "$github_email"

git clone "$repository_url"
dir=$(basename "$repository_url" .git)
cd $dir
cp $file_to_add .
git add gitscript.sh
git commit -m "$COMMIT_MESSAGE"
git push origin main

