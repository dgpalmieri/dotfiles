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

    ## Initialize zsh_aliases
    if [ -e $HOME/.zsh_aliases ]; then
        source $HOME/.zsh_aliases
    fi

    ## Initialize zsh plugins
    for f in ./.zsh-plugins/*; do
        dirname="${f:14}"
        source "$f$dirname.zsh"
    done
    ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=240'

    ## Initialize zsh_envs
    if [ -e $HOME/.zsh_envs ]; then
        source $HOME/.zsh_envs
    fi

    # Initialize SSH-agent
    if [ -z "$(pgrep ssh-agent)" ]; then
       rm -rf /tmp/ssh-*
       eval $(ssh-agent) > /dev/null
    else
       export SSH_AGENT_PID=$(pgrep ssh-agent)
       export SSH_AUTH_SOCK=$(find /tmp/ssh-* -name "agent.*")
    fi


    ## Activate thefuck
    eval "$(thefuck --alias)"

    ## Activate starship prompt
    eval "$(starship init zsh)"

    ## Activate chef
    eval "$(chef shell-init zsh)"

    ## Activate zoxide
    eval "$(zoxide init zsh)"
