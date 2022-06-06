sudo apt-get install ninja-build gettext libtool libtool-bin autoconf automake cmake g++ pkg-config unzip curl doxygen
sudo apt install fd-find
sudo apt install ripgrep

sudo add-apt-repository 'deb http://deb.debian.org/debian buster-backports main' 
sudo apt update
sudo apt install checkinstall

git clone https://github.com/neovim/neovim
cd neovim && make CMAKE_BUILD_TYPE=Release
sudo checkinstall

git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim

git clone https://github.com/hunhokim/nvim ~/.config/nvim
