#!/bin/bash

if [[ "$OSTYPE" == linux-gnu* ]]; then
  apt install vim zsh nnn timewarrior

  # Install Oh-my-zsh
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

  # Import dotfiles
  source ./symlink.sh

elif [[ "$OSTYPE = darwin* ]]; then
  brew install vim zsh nnn timewarrior
  
  # Install Oh-my-zsh
  chsh -s /usr/local/bin/zsh
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

  # Import dotfiles
  source ./symlink.sh

else
  echo "Your operating system is not supported"
  exit 1
fi
