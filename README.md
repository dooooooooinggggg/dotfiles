# dotfiles

```sh
$ cd ~
$ git clone https://github.com/dooooooooinggggg/dotfiles.git
$ cd dotfiles
$ sh setup.sh
```

## Shell

zsh

```sh
# install oh my zsh
wget http://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | sh

mv ~/.zshrc ~/.zshrc_orig

ln -sf ~/dotfiles/.zshrc ~/
ln -sf ~/dotfiles/.zlogin ~/
```

bash

```sh
mv ~/.bash_profile ~/.bash_profile_orig
mv ~/.bashrc ~/.bashrc_orig

ln -sf ~/dotfiles/.bashrc ~/
ln -sf ~/dotfiles/.bash_profile ~/
```

## vscode

macOS

```sh
mv ~/Library/Application\ Support/Code/User/settings.json ~/Library/Application\ Support/Code/User/settings_orig.json
ln -sf ~/dotfiles/vscode/settings.json ~/Library/Application\ Support/Code/User/
```

Linux

```sh
```

## vim

```sh
ln -sf ~/dotfiles/.vim ~/
ln -sf ~/dotfiles/.vimrc ~/
```

## gdb

```sh
ln -sf ~/dotfiles/.gdbinit ~/
```

## virtual env

```sh
# pyenv
git clone git://github.com/yyuu/pyenv.git ~/.pyenv

# rbenv
git clone https://github.com/rbenv/rbenv.git ~/.rbenv
```
