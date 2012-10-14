#!/bin/bash -e

for df in `git ls-files | grep '^\.'`; do
  if [[ -e ~/$df ]]; then
    echo $df exists, deleting
    (cd ~ && rm $df)
  fi
  (cd ~ && ln -s dotfiles/$df $df)
done
