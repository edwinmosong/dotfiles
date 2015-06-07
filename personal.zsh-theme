function virtualenv_info {
    [ $VIRTUAL_ENV ] && echo '('`basename $VIRTUAL_ENV`') '
}

function box_name {
    [ -f ~/.box-name ] && cat ~/.box-name || hostname -s
}

# Prompts
# RPROMPT='[%F{red}%D{%A, %d %b %Y %l:%M %p}%f]'

RPROMPT='[ %F{blue}%D{%A, %d %b %Y %l:%M %p}%f ]'

PROMPT='
%{$fg[magenta]%}%n%{$reset_color%} at %{$fg[yellow]%}$(box_name)%{$reset_color%} 
in %{$fg_bold[green]%}${PWD/#$HOME/~}%{$reset_color%}$(git_prompt_info) 
%{${fg[blue]}%}↳%{${reset_color}%} '

ZSH_THEME_GIT_PROMPT_PREFIX=" on %{$fg[magenta]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[green]%}!"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[green]%}?"
ZSH_THEME_GIT_PROMPT_CLEAN=""

# local return_status="%{$fg[red]%}%(?..⤬)%{$reset_color%}"
# RPROMPT='${return_status}%{$reset_color%}'

