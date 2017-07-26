autoload -U colors && colors
autoload -Uz vcs_info
autoload -Uz is-at-least

setopt correct

PROMPT="%{$fg_bold[blue]%}%~%{$reset_color%}
%{$fg_bold[green]%}>%{$fg_bold[yellow]%}>%{$fg_bold[red]%}>%{$reset_color%} "

if is-at-least 4.3.10; then
    zstyle ':vcs_info:git:*' check-for-changes true
    zstyle ':vcs_info:git:*' stagedstr "+"
    zstyle ':vcs_info:git:*' unstagedstr "-"
    zstyle ':vcs_info:*' formats "[%b] %c%u"
    zstyle ':vcs_info:*' actionformats '[%b|%a]'
fi

is_clear=1

precmd() {
    [[ $is_clear -eq 0 ]] && echo
    is_clear=0

    psvar=()
    vcs_info
    [[ -n "$vcs_info_msg_0_" ]] && psvar[1]="$vcs_info_msg_0_"
}
RPROMPT="%1(v|%1v%f|)"

alias clear='clear; is_clear=1'
