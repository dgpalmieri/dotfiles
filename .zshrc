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

    ## Alias 'jk' to 'esc' in zsh vim line mode
    bindkey -M viins 'jk' vi-cmd-mode

    ## Initialize zsh_aliases
    if [ -e $HOME/.zsh_aliases ]; then
        source $HOME/.zsh_aliases
    fi

    ## Initialize zsh plugins
    for f in $HOME/.zsh_plugins/*; do
        dirname="${f:29}"
        if [[ $dirname == *"completions"* ]]; then
            continue
        fi
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

    # Add zsh completions functionality
    fpath=(/home/dgpalmieri/.zsh_plugins/zsh-completions/src $fpath)

    ## Activate starship prompt
    eval "$(starship init zsh)"

    ## Activate zoxide
    eval "$(zoxide init zsh)"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/dgpalmieri/mambaforge/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/dgpalmieri/mambaforge/etc/profile.d/conda.sh" ]; then
        . "/home/dgpalmieri/mambaforge/etc/profile.d/conda.sh"
    else
        export PATH="/home/dgpalmieri/mambaforge/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

[[ $commands[kubectl] ]] && source <(kubectl completion zsh)
