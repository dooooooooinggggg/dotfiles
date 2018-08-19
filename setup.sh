
sh shells/default.sh
ln -sf ~/dotfiles/.vimrc ~/.vimrc

if [ "$(uname)" == 'Darwin' ]; then
  sh pkg_manager_init/init_brew.sh
  sh pkg_manager_init/init_brew_cask.sh
elif [ "$(expr substr $(uname -s) 1 5)" == 'Linux' ]; then
  sh pkg_manager_init/aptlist.sh
fi

#bash
mv ~/.bash_profile ~/bash_profile_orig
mv ~/.bashrc ~/bashrc_orig
ln -sf ~/dotfiles/.bash_profile ~/.bash_profile
ln -sf ~/dotfiles/.bashrc ~/.bashrc
# zsh
mv ~/.zshrc ~/.zshrc_orig
ln -sf ~/dotfiles/.zshrc ~/.zshrc


# vscode
extensions=$(cat vscode/plugins)
for extension in $extensions; do
    echo "install $extension ..."
    code --install-extension $extension
done
mv ~/Library/Application\ Support/Code/User/settings.json ~/Library/Application\ Support/Code/User/orig_settings.json
ln -sf ~/dotfiles/vscode/settings.json ~/Library/Application\ Support/Code/User/

echo "/usr/local/bin/zsh" >> /etc/shells

# change default shell
chsh -s /usr/local/bin/zsh
# enter password

exit
