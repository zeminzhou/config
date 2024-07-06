#!/bin/bash

# rust
echo "Do you need rust? Y/N"
read need
if [ $flag == "Y" ]
    curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
fi

# install vim-plus
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# install ctags(https://github.com/universal-ctags/ctags)
apt install exuberant-ctags -y

# install ag(https://github.com/ggreer/the_silver_searcher)
apt install silversearcher-ag -y

# install rg(https://github.com/BurntSushi/ripgrep)
apt install ripgrep -y

# install zsh and oh-my-zsh
echo "Do you need zsh? Y/N"
read need
if [ $flag == "Y" ]
    apt install zsh -y
fi
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# install zsh plugins:
#   zsh-autosuggestions
#   zsh-syntax-highlighting
#   zsh-kubectl-prompt
git clone https://github.com/zsh-users/zsh-autosuggestions \
    ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/superbrothers/zsh-kubectl-prompt.git \
    ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-kubectl-prompt
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git \
    ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# install tmux plugin manger
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# TODO: install ycm dependency and compile ycm(https://github.com/ycm-core/YouCompleteMe)

