#!/bin/sh
sudo chsh -s $(which zsh)

sudo apt-get update
sudo apt-get -y install --no-install-recommends apt-utils dialog 2>&1
sudo apt-get install -y \
  curl \
  git \
  latexmk

# Cleanup
sudo apt-get autoremove -y
sudo apt-get autoremove -y
sudo rm -rf /var/lib/apt/lists/*
