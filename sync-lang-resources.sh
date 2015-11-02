#!/bin/bash
set -e

VERSION=$1
BRANCH=$2

# Cleaning previous sync.
#
rm -rf $VERSION
mkdir $VERSION

# Syncing Laravel resources.
#
git clone https://github.com/laravel/laravel.git laravel-resources
mv ./laravel-resources/resources/lang/en ./$VERSION/lang
rm -rf ./laravel-resources

# Syncing Laravel docs.
#
git clone -b $BRANCH https://github.com/laravel/docs.git laravel-docs
mv ./laravel-docs ./$VERSION/laravel-docs
rm -rf ./laravel-docs