# Lines configured by zsh-newuser-install
    HISTFILE=~/.histfile
    HISTSIZE=1000
    SAVEHIST=1000
    bindkey -v
# End of lines configured by zsh-newuser-install

# The following lines were added by compinstall
    zstyle :compinstall filename '/home/dgpalmieri/.zshrc'

    autoload -Uz compinit
    compinit
# End of lines added by compinstall

# Actions to perform on startup

    # Alias 'jk' to 'esc' in zsh vim line mode
    bindkey -M viins 'jk' vi-cmd-mode

    # Start Sway
    if [ "$(tty)" = "/dev/tty1" ]; then
        WLR_DRM_NO_MODIFIERS=1 Hyprland
    fi

    # Initialize zsh_aliases
    if [ -e $HOME/.zsh_aliases ]; then
        source $HOME/.zsh_aliases
    fi

    ## Initialize zsh plugins
    for f in $HOME/.zsh_plugins/*; do
        dirname="${f:29}"
        if [[ $dirname == *'completions'* ]]; then
            continue
        fi
        source "$f$dirname.zsh"
    done
    ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=240'

    ## Initialize zsh completions
    for f in $HOME/.zsh_plugins/completions/*; do
        source "$f"
    done

    # Initialize zsh_envs
    if [ -e $HOME/.zsh_envs ]; then
        source $HOME/.zsh_envs
    fi

    # Initialize SSH-agent
    if [ -z "$(pgrep ssh-agent)" ]; then
       rm -rf "/tmp/ssh-*"
       eval $(ssh-agent) > /dev/null
    else
       export SSH_AGENT_PID=$(pgrep ssh-agent)
       export SSH_AUTH_SOCK=$(find /tmp/ssh-* -name "agent.*")
    fi

    # Add zsh completions functionality
    fpath=(/home/dgpalmieri/.zsh_plugins/zsh-completions/src $fpath)

    # Activate thefuck
    eval "$(thefuck --alias)"

    # Activate starship prompt
    eval "$(starship init zsh)"

    # Activate zoxide
    eval "$(zoxide init zsh)"
