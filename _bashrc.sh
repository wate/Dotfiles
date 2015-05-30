alias ls='ls -GF'
alias ll='ls -GFAl'

source $(brew --repository)/Library/Contributions/brew_bash_completion.sh

BREW_PREFIX=$(brew --prefix)
# Git
if [ -f "${BREW_PREFIX}"/etc/bash_completion.d/git-completion.bash ]; then
    source "${BREW_PREFIX}"/etc/bash_completion.d/git-completion.bash
fi
# Git Flow
if [ -f "${BREW_PREFIX}"/etc/bash_completion.d/git-flow-completion.bash ]; then
    source "${BREW_PREFIX}"/etc/bash_completion.d/git-flow-completion.bash
fi
# Vagrant
if [ -f "${BREW_PREFIX}"/etc/bash_completion.d/vagrant ]; then
    source "${BREW_PREFIX}"/etc/bash_completion.d/vagrant
fi
# WP-CLI
if [ -f "${BREW_PREFIX}"/etc/bash_completion.d/wp ]; then
    source "${BREW_PREFIX}"/etc/bash_completion.d/wp
fi
# gem
if [ -f "${BREW_PREFIX}"/etc/bash_completion.d/gem ]; then
    source "${BREW_PREFIX}"/etc/bash_completion.d/gem
fi
# npm
if [ -f "${BREW_PREFIX}"/etc/bash_completion.d/npm ]; then
    source "${BREW_PREFIX}"/etc/bash_completion.d/npm
fi
# tig
if [ -f "${BREW_PREFIX}"/etc/bash_completion.d/tig-completion.bash ]; then
    source "${BREW_PREFIX}"/etc/bash_completion.d/tig-completion.bash
fi
# packer
if [ -f "${BREW_PREFIX}"/etc/bash_completion.d/packer ]; then
    source "${BREW_PREFIX}"/etc/bash_completion.d/packer
fi
# Set the terminal title to the current working directory
PS1="\[\033]0;\w\007\]"
# Build the prompt
if [[ "$SSH_TTY" ]]; then
    # connected via ssh
    if [[ "$USER" == "root" ]]; then
        # logged in as root
        STYLE_USER="\[${BOLD}${RED}\]"
    fi
    PS1+="${STYLE_USER}\u" # Username
    PS1+="${STYLE_CHARS}@" # @
    PS1+="${STYLE_HOST}\h" # Host
    PS1+="${STYLE_CHARS}: " # :
else
    PS1+="${STYLE_TIME}[\t]"
    PS1+="${STYLE_CHARS}: "
fi
PS1+="${STYLE_PATH}\w " # Working directory
PS1+="\$(prompt_git)" # Git details
PS1+="\n"
PS1+="${STYLE_CHARS}\$ \[${RESET}\]" # $ (and reset color)

export PS1
