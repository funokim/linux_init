# Google Chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
rm google-chrome-stable_current_amd64.deb

# Visual Studio Code
wget -O vscode.deb https://go.microsoft.com/fwlink/?LinkID=760868
sudo dpkg -i vscode.deb
rm vscode.deb

# Sublime Text
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt-get update
sudo apt-get install sublime-text

# Variety
sudo apt install variety

# Ulauncher
sudo add-apt-repository ppa:agornostal/ulauncher
sudo apt update
sudo apt install ulauncher

# Python (python-is-python3)
sudo apt install python-is-python3

# Zsh
sudo apt install zsh
chsh -s $(which zsh)

# Oh-my-zsh
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Powerlevel10k
wget -P ./manual/ https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Regular.ttf
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
sed -i 's/robbyrussell/powerlevel10k\/powerlevel10k/g' ~/.zshrc


