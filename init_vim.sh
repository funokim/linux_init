# Tools needed to build
sudo apt-get install ninja-build gettext libtool libtool-bin autoconf automake cmake g++ pkg-config unzip curl doxygen
sudo apt install fd-find
sudo apt install ripgrep

# checkinstall
sudo add-apt-repository 'deb http://deb.debian.org/debian buster-backports main' 
sudo apt update
sudo apt install checkinstall

# Neovim
git clone https://github.com/neovim/neovim
cd neovim && make CMAKE_BUILD_TYPE=Release
sudo checkinstall

# Packer
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim

git clone https://github.com/hunhokim/nvim ~/.config/nvim

# Vim-plug
curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# clangd
sudo apt install clangd-11
sudo update-alternatives --install /usr/bin/clangd clangd /usr/bin/clangd-11 100
