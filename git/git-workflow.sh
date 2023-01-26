#!/bin/bash

## Before beginning, please create
## an EMPTY repository on GitHub. 

# Switch into the Desktop
cd ~/Desktop

# Clone Repository
git clone https://github.com/<username>hello-world.git
# replace <username> with your github username (without <>)

# Change into the new directory
cd hello-world

# Create readme
touch README.md
vi README.md 

# Check repo status (note README.md is untracked)
git status
git add README.md 

# Go to long-form commit msg
git commit

# Push to github
git push

# Note the .DS_STORE file (only on macOS)
git status

# Creating a gitignore to prevent unimportant files
# from being  added to repository
vi .gitignore
git status
git add .gitignore 
git commit -m "Added a gitignore file for DS_STORE"
git push

# Create a branch
git branch hello-world

# Note still on master
git branch

# Switch to the newly created branch
git checkout hello-world

# Verify branch switch
git branch

# Add a file
touch hello_world.sh
vi hello_world.sh
chmod +x hello_world.sh 
./hello-world.sh 

git status
git add hello-world.sh 
git commit -m "Just print hello world"
git branch

# Switch to master
git checkout master

# Notice the hello_world.sh disappears
# Reappears back on other branch
git checkout hello-world

# Return to master
git checkout master

# Merge in changes
git merge hello-world

# Push changes onto remote
git push

## Create merge conflict by modifying file on GitHub
# Then local modification
vi README.md 
git status
git commit -a -m "Updated readme file"
git push
git status

git pull
git status

git commit -a -m "Merge conflict fixed"

git push
git status
