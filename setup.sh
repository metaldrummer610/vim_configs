#!/bin/bash

git submodule init
git submodule update

cd ~/
ln -s .vim/.vimrc .vimrc
