# private repository
# git clone https://github.com/dooooooooinggggg/ShellUtil.git ~/ShellUtil
# sh ~/ShellUtil/pkg_manager_init/init_brew.sh
# mkdir ~/OSS

# pyenv
git clone git://github.com/yyuu/pyenv.git ~/.pyenv

# vim settings
ln -sf ~/dotfiles/.vimrc ~/.vimrc
ln -sf ~/dotfiles/.vim ~/.vim

# install oh my zsh
wget http://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | sh

# shell config

#bash
ln -sf ~/dotfiles/.bash_profile ~/.bash_profile
ln -sf ~/dotfiles/.bashrc ~/.bashrc
# zsh
ln -sf ~/dotfiles/.zsh* ~/


# vscode
ln -sf ~/dotfiles/vscode/settings.json ~/Library/Application\ Support/Code/User/


#########################
# /etc/shellsに以下を追記 #
#########################
vi /etc/shells
# /usr/local/bin/zsh

# change default shell
chsh -s /usr/local/bin/zsh


# 対応しているシェルに合わせてsourceを実行し、設定を読み込む
# source ~/.bash_profile
source ~/.zshrc
