#!/usr/bin/env bash
# peter's bash installer

# Now symlink everythin
ln -sf /Users/"$USER"/dotfiles/.aliases /Users/"$USER"/.aliases
ln -sf /Users/"$USER"/dotfiles/.bash_profile /Users/"$USER"/.bash_profile
ln -sf /Users/"$USER"/dotfiles/.bash_prompt /Users/"$USER"/.bash_prompt
ln -sf /Users/"$USER"/dotfiles/.bashrc /Users/"$USER"/.bashrc
ln -sf /Users/"$USER"/dotfiles/.exports /Users/"$USER"/.exports
ln -sf /Users/"$USER"/dotfiles/.functions /Users/"$USER"/.functions
ln -sf /Users/"$USER"/dotfiles/.gitconfig /Users/"$USER"/.gitconfig
ln -sf /Users/"$USER"/dotfiles/.gitignore /Users/"$USER"/.gitignore
ln -sf /Users/"$USER"/dotfiles/.inputrc /Users/"$USER"/.inputrc
ln -sf /Users/"$USER"/dotfiles/.Rprofile /Users/"$USER"/.Rprofile
ln -sf /Users/"$USER"/dotfiles/.tmux.conf /Users/"$USER"/.tmux.conf
ln -sf /Users/"$USER"/dotfiles/.vimrc /Users/"$USER"/.vimrc
ln -sf /Users/"$USER"/dotfiles/.vim /Users/"$USER"/.vim

# run vim once to allow the plugins to get installed.


