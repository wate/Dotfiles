PATH=$HOME/.nodebrew/current/bin:$HOME/.rbenv/bin:$(brew --prefix)/sbin:$PATH:$HOME/.composer/vendor/bin:$HOME/go/bin
export PATH
export JAVA_HOME=`/System/Library/Frameworks/JavaVM.framework/Versions/A/Commands/java_home`
export GOROOT=/usr/local/opt/go/libexec
export GOPATH=$HOME/go

if [ -f ~/.bashrc ]; then
    source ~/.bashrc
fi
eval "$(perl -I$HOME/perl5/lib/perl5 -Mlocal::lib)"
