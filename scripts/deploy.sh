#!/bin/bash

git checkout gh-pages
hugo -d public
cd public
git add --all
git commit -m "Publishing to gh-pages"
git push -f origin gh-pages
cd ..
# git push origin gh-pages
