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


autoload -U colors && colors
PROMPT="$fg_bold[blue]%~$reset_color
%{$fg_bold[green]%}>%{$fg_bold[yellow]%}>%{$fg_bold[red]%}>%{$reset_color%} "

