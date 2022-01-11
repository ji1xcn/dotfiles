#!/bin/bash
SCRIPT_DIR=$HOME/dotfiles

if [ "$(uname)" == 'Darwin' ]; then
# Homebrewをインストール
  sh ./$SCRIPT_DIR/homebrew/brew.sh
elif [ "$(expr substr $(uname -s) 1 5)" == 'Linux' ]; then
  echo 'en'
fi

# 配置したい設定ファイル
dotfiles=(.zshrc)

# .zshrc と .tmux.conf という設定ファイルのシンボリックリンクを
# ホームディレクトリ直下に作成する
for file in "${dotfiles[@]}"; do
        ln -svf $file ~/
done
