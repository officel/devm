#!/bin/sh

git clone https://github.com/officel/dotfiles.git ~/.dotfiles
mkdir -p ~/bin
cp -p ~/.dotfiles/tmux-ssh.sh ~/bin/
ln -sf ~/.dotfiles/.tmux.conf ~/.tmux.conf
ln -sf ~/.dotfiles/.vimrc ~/.vimrc
cp -p ~/.dotfiles/.my.cnf ~/.my.cnf
echo ". ~/.dotfiles/cheat/env.bash" >> ~/.bashrc
echo "alias c=cheat" >> ~/.bashrc
cp -p ~/.dotfiles/ssh_config ~/.ssh/config
chmod 644 ~/.ssh/config
