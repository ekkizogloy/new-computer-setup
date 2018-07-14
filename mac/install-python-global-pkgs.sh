#!/bin/bash

# Global python packages. 

global_packages=(
    "pip"
    "setuptools"
    "virtualenv"
    "virtualenvwrapper"
)

user_packages=(
    "powerline-status"
    "powerline-gitstatus"
)


export PIP_REQUIRE_VIRTUALENV=false

#Install Homebrew if not installed already
if command -v pip >/dev/null 2>&1; then
    echo >&2 "PIP is ALREADY installed. Skipping ...";
else
    echo >&2 "PIP is NOT installed. Installing now...";
    sudo easy_install pip
fi

for i in "${global_packages[@]}"
do
    pip install --upgrade $i
    pip3 install --upgrade $i
done

for i in "${user_packages[@]}"
do
    pip install --user --upgrade $i
done
