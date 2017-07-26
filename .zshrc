[ -f ~/.zshrc.local ] && source ~/.zshrc.local

# Lines configured by zsh-newuser-install
HISTFILE=~/.zsh_history
HISTSIZE=1000
SAVEHIST=1000
setopt appendhistory autocd beep extendedglob nomatch notify
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/isaac/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

setopt hist_ignore_dups #履歴を重複させない
setopt share_history #端末間で履歴共有

autoload history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end
bindkey "^P" history-beginning-search-backward-end
bindkey "^N" history-beginning-search-forward-end

zstyle ':completion:*' menu select #補完候補を矢印で移動
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}' #大文字小文字を区別しない

BASEDIR=`dirname $(readlink -f $HOME/.zshrc)`
for f in $BASEDIR/conf.d/*
do
    source $f
done
