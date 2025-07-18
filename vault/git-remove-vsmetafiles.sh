#!/bin/bash -f

git rm --cache *.suo
#git rm --cache *.user
git rm --cache -r bin
git rm --cache -r obj
git rm --cache -r .vs
