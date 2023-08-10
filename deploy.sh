#!/usr/bin/env sh

#abort an errors
set -e

npm run build

cd dist

git init

git checkout -b main
git add -A
git commit -m "deploy"

git push -f git@github.com:JesusSalazarVidal/react-task-example/settings.git main:gh-pages
cd -