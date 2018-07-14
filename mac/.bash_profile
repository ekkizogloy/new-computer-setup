if [ -f ~/.bashrc ]; then
   source ~/.bashrc
fi

# pip should only run if there is a virtualenv currently activated
export PIP_REQUIRE_VIRTUALENV=true
export WORKON_HOME=$HOME/.virtualenv
export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python2.7
export VIRTUALENVWRAPPER_VIRTUALENV_ARGS='--no-site-packages'
export PIP_VIRTUALENV_BASE=$WORKON_HOME

export CLICOLOR=1

export GO_JAVA_HOME='/Library/Internet Plug-Ins/JavaAppletPlugin.plugin/Contents/Home'
export DYLD_LIBRARY_PATH=/Applications/SEGGER/JLink:$DYLD_LIBRARY_PATH

# brew GIT token
# export HOMEBREW_GITHUB_API_TOKEN=<token>

if [[ -r /usr/local/bin/virtualenvwrapper.sh ]]; then
    source /usr/local/bin/virtualenvwrapper.sh
else
    echo "WARNING: Can't find virtualenvwrapper.sh"
fi

alias ls="ls -lahp"
#alias activate="source ~/arch/env/mac-fw-dev/bin/activate"
alias cd="cd -P"
alias vim="mvim"
alias grep="grep --color"
alias grepc="grep --exclude=*build* --exclude=*\.tox* --exclude=*pycache* --exclude=*.pyc --color -r -n"
alias gdb="arm-none-eabi-gdb"

source /usr/local/etc/bash_completion.d/git-completion.bash
#source ~/.bash_secrets
