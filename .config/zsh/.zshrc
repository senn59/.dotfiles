#Alfo's config
#set prompt
autoload -U colors && colors
#PS1='%F{magenta}[%n@%F{cyan}%m %F{white}%~%F{cyan}]$ '
PS1='%F{red}[%n@%F{white}%m %F{red}%~%F{white}]$ '
#echo -ne '\e[5 q' # normal cursor

# History in cache directory:
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.cache/zsh/history

#Add github branch on the right when in a git directory 
autoload -Uz vcs_info add-zsh-hook
setopt prompt_subst
add-zsh-hook precmd vcs_info
RPROMPT='%F{red}${vcs_info_msg_0_}%f'
zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:*' unstagedstr ' *'
zstyle ':vcs_info:*' stagedstr ' +'
zstyle ':vcs_info:git:*' formats       '(%b%u%c)'
zstyle ':vcs_info:git:*' actionformats '(%b|%a%u%c)'

#Aliases
alias dots='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias vim='nvim'
# Basic auto/tab complete:
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)		# Include hidden files.

#load plugins
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

if [ -n "$DESKTOP_SESSION" ];then
    eval $(gnome-keyring-daemon --start)
    export SSH_AUTH_SOCK
fi

#generate ascii
#$HOME/.local/bin/asciigen
