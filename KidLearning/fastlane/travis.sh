#!/bin/sh

if [[ "$TRAVIS_PULL_REQUEST" != "false" ]]; then
fastlane test
exit $?
fi

if [[ "$TRAVIS_BRANCH" == "master" ]]; then
# Travis CI fetches a shallow clone. We use commit count until HEAD for build number. In order to assure that the count is correct we have to unshallow the clone.
git fetch --unshallow

# We need this because otherwise there are issues with SSL in Ruby in xcode7.2 OS X image
rvm reinstall 2.0.0-p643 --disable-binary
fastlane beta
exit $?
fi
