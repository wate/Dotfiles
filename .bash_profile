PATH=$HOME/.nodebrew/current/bin:$HOME/.rbenv/bin:$(brew --prefix)/sbin:$PATH:$HOME/.composer/vendor/bin:$HOME/go/bin
export PATH
export GOROOT=/usr/local/opt/go/libexec
export GOPATH=$HOME/go
export BASH_SILENCE_DEPRECATION_WARNING=1

if [ -f ~/.bashrc ]; then
    source ~/.bashrc
fi
