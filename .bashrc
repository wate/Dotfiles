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

[ -f "${BREW_PREFIX}"/etc/bash_completion ] && source /usr/local/etc/bash_completion
# brew
[ -f "${BREW_PREFIX}"/etc/bash_completion.d/brew_bash_completion.sh ] && source "${BREW_PREFIX}"/etc/bash_completion.d/brew_bash_completion.sh
# brew-file
[ -f "${BREW_PREFIX}"/etc/bash_completion.d/brew-file ] && source "${BREW_PREFIX}"/etc/bash_completion.d/brew-file
# Git
[ -f "${BREW_PREFIX}"/etc/bash_completion.d/git-completion.bash ] && source "${BREW_PREFIX}"/etc/bash_completion.d/git-completion.bash
# Git Flow
[ -f "${BREW_PREFIX}"/etc/bash_completion.d/git-flow-completion.bash ] && source "${BREW_PREFIX}"/etc/bash_completion.d/git-flow-completion.bash
# Vagrant
[ -f "${BREW_PREFIX}"/etc/bash_completion.d/vagrant ] && source "${BREW_PREFIX}"/etc/bash_completion.d/vagrant
# rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
# nodebrew
[ -f "${BREW_PREFIX}"/etc/bash_completion.d/nodebrew ] && source "${BREW_PREFIX}"/etc/bash_completion.d/nodebrew
# tig
[ -f "${BREW_PREFIX}"/etc/bash_completion.d/tig-completion.bash ] && source "${BREW_PREFIX}"/etc/bash_completion.d/tig-completion.bash
# packer
[ -f "${BREW_PREFIX}"/etc/bash_completion.d/packer ] && source "${BREW_PREFIX}"/etc/bash_completion.d/packer
# rclone
[ -f "${BREW_PREFIX}"/etc/bash_completion.d/rclone ] && source "${BREW_PREFIX}"/etc/bash_completion.d/rclone
# composer
[ -f "${BREW_PREFIX}"/etc/bash_completion.d/composer-completion.sh ] && source "${BREW_PREFIX}"/etc/bash_completion.d/composer-completion.sh
# Phalcon Developer Tools
[ -f ~/phalcon-devtools/phalcon-completion.bash ] && source ~/phalcon-devtools/phalcon-completion.bash
# AWS CLI
[ -f "${BREW_PREFIX}"/etc/bash_completion.d/aws_bash_completer ] && source "${BREW_PREFIX}"/etc/bash_completion.d/aws_bash_completer
# Google Cloud SDK
[ -f /usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.bash.inc ] && source /usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.bash.inc
[ -f /usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.bash.inc ] && source /usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.bash.inc

