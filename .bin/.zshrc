# powerlevel10k-------------------------------------------------------------------------
# zshテーマにpowerlevel10kを使用
source ~/powerlevel10k/powerlevel10k.zsh-theme

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# ------------------------------------------------------------------------------------------

# gitのpathをbrewでインストールしたものに変更
export PATH=/usr/local/bin/git:$PATH

# 補完 --------------------------------------------------------------------------------------
# 矢印キーでの選択
autoload -U compinit
compinit
zstyle ':completion:*:default' menu select=1

# ctrl+pでの前方一致補完
bindkey '^P' history-beginning-search-backward

# zsh-completionsの設定
# see https://zenn.dev/sprout2000/articles/bd1fac2f3f83bc#2.-zsh-completions-%E3%81%AE%E3%82%A4%E3%83%B3%E3%82%B9%E3%83%88%E3%83%BC%E3%83%AB
if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh-completions:$FPATH
  source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
  autoload -Uz compinit && compinit
fi
# ------------------------------------------------------------------------------------------