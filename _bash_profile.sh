if [ -f ~/.bashrc ]; then
    source ~/.bashrc
fi

PATH=$(brew --prefix homebrew/php/php55)/bin:$PATH:$HOME/.composer/vendor/bin
export PATH

export ANDROID_HOME=/usr/local/opt/android-sdk

# gitignore.io
function gi() { curl -L -s https://www.gitignore.io/api/$@ ;}
