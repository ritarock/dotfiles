#!/bin/sh
sudo apt-get install software-properties-common
yes '' | sudo add-apt-repository ppa:neovim-ppa/unstable
sudo apt-get update
sudo apt-get -y install neovim
