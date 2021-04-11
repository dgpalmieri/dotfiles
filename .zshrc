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
    # Start Sway
    if [ "$(tty)" = "/dev/tty1" ]; then
        exec sway
    fi

    ## Initialize zsh_aliases
    if [ -e $HOME/.zsh_aliases ]; then
        source $HOME/.zsh_aliases
    fi

    ## Initialize zsh-autosuggestions
    if [ -e $HOME/.zsh-plugins/zsh-autosuggestions/zsh-autosuggestions.zsh ]; then
        source $HOME/.zsh-plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
    fi

    ## Initialize zsh_envs
    if [ -e $HOME/.zsh_envs ]; then
        source $HOME/.zsh_envs
    fi

    ## Activate thefuck
    eval "$(thefuck --alias)"

    ## Activate starship prompt
    eval "$(starship init zsh)"
