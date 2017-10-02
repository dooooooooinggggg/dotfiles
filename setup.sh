
ln -sf ~/dotfiles/.vimrc ~/.vimrc

ln -sf ~/dotfiles/.vim ~/.vim

wget http://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | sh

ln -sf ~/dotfiles/.bash_profile ~/.bash_profile
ln -sf ~/dotfiles/.bashrc ~/.bashrc
ln -sf ~/dotfiles/.zsh* ~/

source ~/.bash_profile
source ~/.zshrc
