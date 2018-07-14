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




alias activate="source ~/arch/env/mac-fw-dev/bin/activate"
alias ls="ls -lhp"
alias cd="cd -P"
alias vim="mvim"
alias grep="grep --color"
alias grepc="grep --exclude=*build* --exclude=*\.tox* --exclude=*pycache* --exclude=*.pyc --color -r -n"
alias gdb="arm-none-eabi-gdb"
alias pip_enable="export PIP_REQUIRE_VIRTUALENV=false"




#--------------------------------
if [ -f ~/.bash_secrets ]; then
    source ~/.bash_secrets
fi
#--------------------------------
if [[ -r /usr/local/bin/virtualenvwrapper.sh ]]; then
    source /usr/local/bin/virtualenvwrapper.sh
else
    echo "WARNING: Can't find virtualenvwrapper.sh"
fi
#--------------------------------
if [ -f ~/.bash_powerlinerc ]; then
    source ~/.bash_powerlinerc
fi
#--------------------------------
if [ -f /usr/local/etc/bash_completion.d/git-completion.bash ]; then
    source /usr/local/etc/bash_completion.d/git-completion.bash
fi

