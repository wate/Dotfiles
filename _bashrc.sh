alias ls='ls -GF'
alias ll='ls -GFAl'

source $(brew --repository)/Library/Contributions/brew_bash_completion.sh

# Git
if [ -f `brew --prefix`/etc/bash_completion.d/git-completion.bash ]; then
    source `brew --prefix`/etc/bash_completion.d/git-completion.bash
fi
# Git Flow
if [ -f `brew --prefix`/etc/bash_completion.d/git-flow-completion.bash ]; then
    source `brew --prefix`/etc/bash_completion.d/git-flow-completion.bash
fi
# Vagrant
if [ -f `brew --prefix`/etc/bash_completion.d/vagrant ]; then
    source `brew --prefix`/etc/bash_completion.d/vagrant
fi
# WP-CLI
if [ -f `brew --prefix`/etc/bash_completion.d/wp ]; then
    source `brew --prefix`/etc/bash_completion.d/wp
fi
