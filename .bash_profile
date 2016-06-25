PATH=$HOME/.nodebrew/current/bin:$HOME/.rbenv/bin:$(brew --prefix)/sbin:$PATH:$HOME/.composer/vendor/bin
export PATH
export ANDROID_HOME=/usr/local/opt/android-sdk
export JAVA_HOME=`/System/Library/Frameworks/JavaVM.framework/Versions/A/Commands/java_home`

if [ -f ~/.bashrc ]; then
    source ~/.bashrc
fi
if [ -f ~/.secret ]; then
    source ~/.secret
fi
eval "$(perl -I$HOME/perl5/lib/perl5 -Mlocal::lib)"
