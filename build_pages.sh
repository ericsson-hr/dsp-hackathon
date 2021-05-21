#!/bin/bash

## Environment

set -x

apt-get update
apt-get -y install git rsync python3-sphinx python3-sphinx-rtd-theme
 
pwd
ls -lah
export SOURCE_DATE_EPOCH=$(git log -1 --pretty=%ct)

## Build documentation

make clean
make html

## Prepare git

git config --global user.name "${GITHUB_ACTOR}"
git config --global user.email "${GITHUB_ACTOR}@users.noreply.github.com"
 
docroot=`mktemp -d`
rsync -av "build/html/" "${docroot}/"
 
pushd "${docroot}"
 
git init
git remote add deploy "https://token:${GITHUB_TOKEN}@github.com/${GITHUB_REPOSITORY}.git"
git checkout -b gh-pages
 
touch .nojekyll

## Publish

cat > README.md <<EOF
# GitHub Pages Cache

This branch is used to store the Sphinx output which will be published on GitHub Pages.
Sources are found in the 'main' branch.
 
For more information on how this documentation is built using Sphinx, Read the Docs, and GitHub Actions/Pages, see:
 
 * https://tech.michaelaltfield.net/2020/07/18/sphinx-rtd-github-pages-1
EOF
 
git add .
 
msg="Updating Docs for commit ${GITHUB_SHA} made on `date -d"@${SOURCE_DATE_EPOCH}" --iso-8601=seconds` from ${GITHUB_REF} by ${GITHUB_ACTOR}"
git commit -am "${msg}"
 
git push deploy gh-pages --force

# Exit

popd
exit 0
