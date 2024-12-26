#!/bin/bash

# Initialize the Git repository
git init

# Loop through all the directories (subfolders) and add & commit them separately
for folder in */ ; do
    git add "$folder"
    git commit -m "Added $folder"
done

# Loop through all the files in the root directory and add & commit them separately
for file in *.* ; do
    git add "$file"
    git commit -m "Added $file"
done

# Add your remote repository
git remote add origin https://github.com/higgn/hospital-management-2025.git

# Push the commits to the master branch
git push -u origin master
