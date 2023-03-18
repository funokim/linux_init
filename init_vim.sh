#!/bin/bash

# Tools needed to build
sudo apt-get install ninja-build gettext libtool libtool-bin autoconf automake cmake g++ pkg-config unzip curl doxygen -y
sudo apt install fd-find ripgrep -y

# Neovim
if [[ -z $(which checkinstall) ]]; then
  sudo apt update
  sudo apt install checkinstall -y
fi

if [[ -z $(which nvim) ]]; then
  git clone https://github.com/neovim/neovim
  cd neovim && make CMAKE_BUILD_TYPE=RelWithDebInfo
  sudo checkinstall -y

  rm -rf neovim
fi

# Packer
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim

git clone https://github.com/hunhokim/nvim ~/.config/nvim

# Vim-plug
curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Nvm, Node
wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash
#nvm install node
