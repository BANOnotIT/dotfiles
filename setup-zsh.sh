# installing zsh
#sudo apt install zsh

# installing oh-my-zsh
#RUNZSH=no
#KEEP_ZSHRC=no
#exec sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# installing plugins
git clone --depth=1 https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone --depth=1 https://github.com/zsh-users/zsh-history-substring-search ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-history-substring-search
git clone --depth=1 https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
sed -i "s/^plugins=(.*)/plugins=(git zsh-autosuggestions extract zsh-history-substring-search zsh-syntax-highlighting)/g" .zshrc

# installing powelevel10k
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
sed -i "s/^ZSH_THEME=.*/ZSH_THEME=powerlevel10k/powerlevel10k/g" .zshrc

# running zsh
exec zsh -l
