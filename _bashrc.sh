alias ls='ls -GF'
alias ll='ls -GFAl'

if [ -f `brew --prefix`/etc/bash_completion.d/git-completion.bash ]; then
    source `brew --prefix`/etc/bash_completion.d/git-completion.bash
fi
if [ -f `brew --prefix`/etc/bash_completion.d/vagrant ]; then
    source `brew --prefix`/etc/bash_completion.d/vagrant
fi
if [ -f `brew --prefix`/etc/bash_completion.d/wp ]; then
    source `brew --prefix`/etc/bash_completion.d/wp
fi