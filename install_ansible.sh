#!/bin/sh

readonly PYTHON_VERSION="3.6.6"

if ! command -v brew > /dev/null ; then
  echo "-- Install Homebrew --"
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi
if ! command -v pyenv > /dev/null ; then
  echo "-- Install pyenv --"
  brew install pyenv
  echo 'eval "$(pyenv init -)";' >>~/.bashrc
fi
if ! command -v pyenv-virtualenv > /dev/null ; then
  echo "-- Install pyenv-virtualenv --"
  brew install pyenv-virtualenv
  echo 'eval "eval "$(pyenv virtualenv-init -)";' >>~/.bashrc
fi
if ! command -v pyenv-migrate > /dev/null ; then
  brew install pyenv-pip-migrate
fi

source ~/.bashrc

CURRENT_PYTHON_VERSION=$(pyenv version global version | sed 's/\s.*$//')
if [ "${CURRENT_PYTHON_VERSION}" != "${PYTHON_VERSION}" ]; then
  echo "-- Install python --"
  pyenv install ${PYTHON_VERSION}
  if [ "${CURRENT_PYTHON_VERSION}" != 'system' ]; then
    echo "-- Migrate pip packages --"
    pyenv migrate ${CURRENT_PYTHON_VERSION} ${PYTHON_VERSION}
  fi
  echo "-- Switch python version --"
  pyenv global ${PYTHON_VERSION}
fi

if ! command -v ansible > /dev/null ; then
  echo "-- Install ansible --"
  pip install ansible
fi
