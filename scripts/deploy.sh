#!/bin/bash

rm -rf public
git worktree add -B gh-pages public origin/gh-pages
hugo
cd public && git add --all && git commit -m "Publishing to gh-pages" & cd ..
git push origin gh-pages
