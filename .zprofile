export EDITOR="nvim"
export TERMINAL="st"
export BROWSER="firefox.desktop"
export MOZ_USE_XINPUT2=1 #fixes jittery scrolling on firefox

export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"

export XINITRC="$XDG_CONFIG_HOME/x11/xinitrc"
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"
export PATH=$PATH:$HOME/.local/bin

# Starting X
if [ -z "${DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
  exec startx
fi
