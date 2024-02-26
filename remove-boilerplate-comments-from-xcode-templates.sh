#!/bin/bash

# Based on: https://paulz.github.io/xcode/source/code/2015/12/12/remove-default-header-comment-in-xcode.html

XCODE="Xcode-beta"
XCODE_DEV="/Applications/${XCODE}.app/Contents/Developer"
pushd "${XCODE_DEV}/Platforms/iPhoneOS.platform/Developer/Library/Xcode/Templates"
find -E . -type f \
    \( -regex '.*\.[chm]' -or -regex '.*\.swift' \) \
    -exec sed -i '' '1,/^$/d' '{}' ';'
popd

pushd "${XCODE_DEV}/Library/Xcode/Templates"
find -E . -type f \
    \( -regex '.*\.[chm]' -or -regex '.*\.swift' \) \
    -exec sed -i '' '1,/^$/d' '{}' ';'
popd
