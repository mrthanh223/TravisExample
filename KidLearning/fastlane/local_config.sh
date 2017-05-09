#!/bin/sh
export FASTLANE_PASSWORD=Thanhcong99
export KEY_PASSWORD=foo
export ENCRYPTION_PASSWORD=bar

export HOCKEY_API_TOKEN=token
export HOCKEY_APP_ID=token

export TRAVIS_BRANCH=master
export TRAVIS_PULL_REQUEST=false

openssl aes-256-cbc -k $ENCRYPTION_PASSWORD -in fastlane/Certificates/Certificates.p12.enc -d -a -out fastlane/Certificates/Certificates.p12