#!/bin/bash -eu

DEFAULT_BRANCH=$(git remote show origin | grep "HEAD branch" | sed "s/.*: //")

COMMIT_ID=$(grep -Fxf \
    <(git log --first-parent --merges --pretty=format:%H $DEFAULT_BRANCH; echo) \
    <(git log --ancestry-path --merges --pretty=format:%H $1..$DEFAULT_BRANCH; echo) \
    | tail -n 1)

COMMIT_MSG=$(git log $COMMIT_ID -n1 --pretty=format:%s)
PR_NO=$(echo $COMMIT_MSG | egrep --only-matching '#\d+')

GIT_URL=$(git remote get-url origin)
REPO_PATH=${GIT_URL#git@github.com:}
REPO_SIGN=${REPO_PATH%.git}

open "https://github.com/$REPO_SIGN/pull/${PR_NO#\#}"
