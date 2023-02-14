#!/bin/bash

# Zsh
if [[ -z $(which zsh) ]]; then
  sudo apt install zsh -y
fi

# Oh-my-zsh
if ! [[ -e ~/.oh-my-zsh ]]; then
  sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
fi

# Powerlevel10k
if ! [[ -e ~/.oh-my-zsh/custom/themes/powerlevel10k ]]; then
  wget -P ./input/ https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Regular.ttf
  git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
  sed -i 's/robbyrussell/powerlevel10k\/powerlevel10k/g' ~/.zshrc
fi

# Autojump
if [[ -z $(which autojump) ]]; then
  sudo apt install autojump -y
  echo ". /usr/share/autojump/autojump.sh" >> ~/.zshrc                                                                              
fi

# tmux
if [[ -z $(which tmux) ]]; then
  sudo apt install tmux -y
  git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
  cp input/.tmux.conf ~/.tmux.conf
fi
