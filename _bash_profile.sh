if [ -f ~/.bashrc ]; then
        source ~/.bashrc
fi

PATH=$(brew --prefix homebrew/php/php55)/bin:$PATH:$HOME/bin
export PATH

