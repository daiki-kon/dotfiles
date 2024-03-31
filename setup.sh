#!/bin/zsh

printf '\033[34m%s\033[m\n' 'creating symbolic link'
zsh .bin/link.sh
printf '\033[34m%s\033[m\n' 'symbolic link creation completed'



# ホームディレクトリのリストファイル ~/.Brewfile を使用してインストール
printf '\033[34m%s\033[m\n' 'installing with brew'
brew bundle --global


printf '\033[34m%s\033[m\n' 'setup zsh theme'
zsh ./scripts/setup_zsh_theme.sh
printf '\033[34m%s\033[m\n' 'setup zsh theme completed'

printf '\033[34m%s\033[m\n' 'setup vscode'
zsh ./vscode/sync.sh
printf '\033[34m%s\033[m\n' 'setup vscode completed'

printf '\033[34m%s\033[m\n' 'setup zsh'
zsh ./scripts/setup_zsh.sh
printf '\033[34m%s\033[m\n' 'setup zsh completed'

exec zsh