

# vim settings
ln -sf ~/dotfiles/.vimrc ~/.vimrc
ln -sf ~/dotfiles/.vim ~/.vim

# install oh my zsh
wget http://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | sh

# shell config
ln -sf ~/dotfiles/.bash_profile ~/.bash_profile
ln -sf ~/dotfiles/.bashrc ~/.bashrc
ln -sf ~/dotfiles/.zsh* ~/

# vscode
ln -sf ~/dotfiles/vscode/setting.json ~/Library/Application\ Support/Code/User/

source ~/.bash_profile
source ~/.zshrc
