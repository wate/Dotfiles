alias ls='exa'
alias ll='exa -l --git'
alias la='exa -la --git'

function command_exists { command -v "$1" > /dev/null; }
# gitignore.io
function gi() { curl -L -s https://www.gitignore.io/api/$@ ;}

if [ -f "$(brew --prefix bash-git-prompt)/share/gitprompt.sh" ]; then
  source "$(brew --prefix bash-git-prompt)/share/gitprompt.sh"
fi

BREW_PREFIX=$(brew --prefix)
# brew
if [ -f "${BREW_PREFIX}"/etc/bash_completion.d/brew_bash_completion.sh ]; then
    source "${BREW_PREFIX}"/etc/bash_completion.d/brew_bash_completion.sh
fi
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
# tig
if [ -f "${BREW_PREFIX}"/etc/bash_completion.d/tig-completion.bash ]; then
    source "${BREW_PREFIX}"/etc/bash_completion.d/tig-completion.bash
fi
# packer
if [ -f "${BREW_PREFIX}"/etc/bash_completion.d/packer ]; then
    source "${BREW_PREFIX}"/etc/bash_completion.d/packer
fi
if command_exists aws ; then
    complete -C aws_completer aws
fi
