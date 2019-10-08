#!/bin/bash

if [[ -d public ]]; then
    GLOBIGNORE=*.git
    rm -rf -v public/*
fi

hugo

if [[ -n "$1" ]]; then
    cd public
    git remote add origin "git@github.com:xyslion/xyslion.github.io.git"
    git add -A
    git commit -m "$1"
    git pull origin master
    git push -u origin master
else
    echo
    echo "[WARN] Files will NOT be uploaded to Github without adding comments."
    echo "Usage: $(basename "$0") COMMIT_COMMENTS"
fi