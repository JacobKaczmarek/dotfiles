#!/bin/bash

dir=~/dotfiles
backupDir=~/dotfilesBackup

trackedFiles="zshrc zshenv vimrc p10k.zsh"

# Create backup folder
echo -n "Creating $backupDir for backup of any existing dotfiles in ~ ..."
mkdir -p $backupDir
echo "done"

# Move existing dotfiles to backup directory and create symlinks
echo "Backing up current dotfiles and symlinking new ones..."

for file in $trackedFiles; do
  if [ -f ~/.$file ]; then
    mv ~/.$file $backupDir/
    echo "Moving .$file to backup directory.."
  fi
  echo "Symlinking $file"
  ln -s $dir/$file ~/.$file
done

echo "done"
