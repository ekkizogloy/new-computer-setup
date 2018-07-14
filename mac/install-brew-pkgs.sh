#!/bin/bash

packages=(
    "git"
    "bash-completion"
    "ctags"
    "gitup"
    "ssh-copy-id"
    "wget"
    "python@2"
    "python3"
    "macvim"
#    "emacs --with-cocoa"
#    "postgresql"
#    "vips"
#    "nvm"
)

#Install Homebrew if not installed already
if command -v brew >/dev/null 2>&1; then
    echo >&2 "Homebrew is ALREADY installed. Updating now...";
    brew update
    brew -v
else
    echo >&2 "Homebrew is NOT installed. Installing now...";
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

for i in "${packages[@]}"
do
    if brew ls --versions $i > /dev/null; then
        echo >&2 "'$i' is ALREADY installed. Updating now...";
        brew upgrade $i
        brew link $i
    else
        echo >&2 "'$i' is NOT installed. Installing now...";
        brew install $i
        brew link $i
    fi
done


