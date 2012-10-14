#!/bin/bash

if [ "`git ls-files -m`" = "" ]; then
  git pull origin master -f && bash install.sh
else
  echo Aborting, local changes would be overwritten
  git status
fi
