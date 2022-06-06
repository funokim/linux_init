# Zsh
sudo apt install zsh

# Oh-my-zsh
sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"

# Powerlevel10k
wget -P ./input/ https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Regular.ttf
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
sed -i 's/robbyrussell/powerlevel10k\/powerlevel10k/g' ~/.zshrc

# Autojump
sudo apt install autojump
echo ". /usr/share/autojump/autojump.sh" >> ~/.zshrc                                                                              
