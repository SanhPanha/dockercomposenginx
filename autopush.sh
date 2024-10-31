#!/bin/bash

# This script is used to push the code to the remote repository

message = "$1" #commit message when pushing the code to the remote repository

if [ -z "$message" ]; then
    # echo "Please provide a commit message"
    echo "Usage: bash autopush.sh <commit message> 🔥"
    exit 1
fi

git add .
git commit -m "$message"
git push -u origin "$(git branch --show-current)"
 