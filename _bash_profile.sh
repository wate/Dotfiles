PATH=$HOME/.nodebrew/current/bin:$(brew --prefix)/sbin:$PATH:$HOME/.composer/vendor/bin
export PATH
export ANDROID_HOME=/usr/local/opt/android-sdk

if [ -f ~/.bashrc ]; then
    source ~/.bashrc
fi
if [ -f ~/.secret ]; then
    source ~/.secret
fi
