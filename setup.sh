# vscode
if [ "$(uname)" == 'Darwin' ]; then
  # extensions=$(cat vscode/plugins)
  # for extension in $extensions; do
  #     echo "install $extension ..."
  #     code --install-extension $extension
  # done
  vscode/plugins.sh
  mv ~/Library/Application\ Support/Code/User/settings.json ~/Library/Application\ Support/Code/User/orig_settings.json
  ln -sf ~/dotfiles/vscode/settings.json ~/Library/Application\ Support/Code/User/
fi

# change default shell
if [ "$(uname)" == 'Darwin' ]; then
  echo "/usr/local/bin/zsh" >> /etc/shells
  chsh -s /usr/local/bin/zsh
fi
# enter password

exit
