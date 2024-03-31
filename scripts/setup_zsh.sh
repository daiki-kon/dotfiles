#!/bin/zsh

# zsh-completionsの設定
# see https://zenn.dev/sprout2000/articles/bd1fac2f3f83bc#2.-zsh-completions-%E3%81%AE%E3%82%A4%E3%83%B3%E3%82%B9%E3%83%88%E3%83%BC%E3%83%AB
chmod -R go-w /opt/homebrew/share
rm -f ~/.zcompdump; compinit