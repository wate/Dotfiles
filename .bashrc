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
# brew-file
if [ -f "${BREW_PREFIX}"/etc/bash_completion.d/brew-file ]; then
    source "${BREW_PREFIX}"/etc/bash_completion.d/brew-file
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
# rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
# nodebrew
if [ -f "${BREW_PREFIX}"/etc/bash_completion.d/nodebrew ]; then
    source "${BREW_PREFIX}"/etc/bash_completion.d/nodebrew
fi
# tig
if [ -f "${BREW_PREFIX}"/etc/bash_completion.d/tig-completion.bash ]; then
    source "${BREW_PREFIX}"/etc/bash_completion.d/tig-completion.bash
fi
# packer
if [ -f "${BREW_PREFIX}"/etc/bash_completion.d/packer ]; then
    source "${BREW_PREFIX}"/etc/bash_completion.d/packer
fi
# composer
if [ -f "${BREW_PREFIX}"/etc/bash_completion.d/composer-completion.sh ]; then
    source "${BREW_PREFIX}"/etc/bash_completion.d/composer-completion.sh
fi
# Phalcon Developer Tools
if [ -f ~/phalcon-devtools/phalcon-completion.bash ]; then
    source ~/phalcon-devtools/phalcon-completion.bash
fi
# aws
if [ -f "${BREW_PREFIX}"/etc/bash_completion.d/aws_bash_completer ]; then
    source "${BREW_PREFIX}"/etc/bash_completion.d/aws_bash_completer
fi

