#!/bin/bash
set -e

# Setup environment for build, default to local if not defined
RELEASE=${RELEASE:-local}
. env/buildenv-${RELEASE}.sh

echo $RELEASE

cd ui

npm install
npm run build
