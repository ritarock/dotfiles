#!/bin/sh
sudo apt-get update
sudo apt-get -y install git
sudo git clone git://github.com/yyuu/pyenv.git ./pyenv
export PYENV_ROOT=$HOME/.pyenv
export PATH=$PYENV_ROOT/bin:$PATH
eval "$(pyenv init -)"
sudo apt-get -y install zlib1g-dev
sudo apt-get -y install libssl-dev
pyenv install 3.6.1
pyenv global 3.6.1
