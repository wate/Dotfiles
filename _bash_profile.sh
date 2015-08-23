if [ -f ~/.bashrc ]; then
    source ~/.bashrc
fi

PATH=$HOME/.nodebrew/current/bin:$(brew --prefix homebrew/php/php55)/bin:$PATH:$HOME/.composer/vendor/bin
export PATH
export ANDROID_HOME=/usr/local/opt/android-sdk

if [ -f ~/.secret ]; then
    source ~/.secret
fi

# gitignore.io
function gi() { curl -L -s https://www.gitignore.io/api/$@ ;}
