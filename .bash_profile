export BASH_SILENCE_DEPRECATION_WARNING=1

[[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"

if [ -f ~/.bashrc ]; then
    source ~/.bashrc
fi

