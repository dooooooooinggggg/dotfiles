# https://qiita.com/xtetsuji/items/555a1ef19ed21ee42873

# リモートリポジトリとして、オリジナルのリポジトリを upstream という名前で設定します。
# git remote add upstream git://github.com/DQNEO/Renshu.git
git remote add upstream {URL}

git fetch upstream

git merge upstream/master
