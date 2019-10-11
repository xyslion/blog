#!/bin/bash

rm -rf public

git clone "git@github.com:xyslion/xyslion.github.io.git" public

if [[ -d public ]]; then
    GLOBIGNORE=*.git
    rm -rf -v public/*
fi

hugo

comment="${1:-'update blog'}"
echo $comment

cd public
git add -A
git commit -m "${comment}"
git push