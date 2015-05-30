alias ls='ls -GF'
alias ll='ls -GFAl'

source "$(brew --repository)"/Library/Contributions/brew_bash_completion.sh

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
