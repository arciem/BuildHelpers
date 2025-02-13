#!/bin/bash

`dirname $0`/utils/gitHeader

if [ "$#" -ne 1 ]
then
    echo "Usage: tag <tag> | --list | --last"
    exit 1
fi

option=$1

if [ "$option" == "--list" ]; then
    git for-each-ref --format='%(refname:short): %(creatordate)' refs/tags
    exit 0
elif [ "$option" == "--last" ]; then
    git for-each-ref --sort=-creatordate --format='%(refname:short): %(creatordate)' refs/tags | head -n 1
    exit 0
else
    git tag "$option" && git push --tags
fi
