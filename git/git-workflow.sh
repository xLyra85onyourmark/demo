#!/bin/bash

## Before beginning, please create
## an EMPTY repository on GitHub. 

# Switch into the Desktop
cd ~/Desktop

# Clone Repository
git clone https://github.com/<username>/hello-world.git
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
git branch hello-ex-branch

# Note still on main (or master)
git branch

# Switch to the newly created branch
git checkout hello-ex-branch

# Verify branch switch
git branch

# Add a file
touch say-hello-world.sh
vi say-hello-world.sh

# Within `vi`, please enter:
#
# #!/bin/bash
#
# echo "Hello bash world!"
#
# ---
# You may close the connection by pressing ESC, then typing :wq

# Next, we need to allow the file to execute
chmod +x say-hello-world.sh 

# Then, we'll run the file.
./say-hello-world.sh

# Let's see what git thinks about the file
git status

# Not tracked! Uh-oh.
# We can add it to the repository using:
git add say-hello-world.sh 
git commit -m "Just print hello world"

# What branch did we add the commit to?
git branch

# Switch to main (may be master)
git checkout main

# Notice the say-hello-world.sh disappears
# Reappears back on other branch
git checkout hello-ex-branch

# Return to main (or master) branch
git checkout main

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
