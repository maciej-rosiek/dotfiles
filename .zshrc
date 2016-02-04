# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="my"

# Example aliases
alias vi=vim
alias keys='kp -d ~/keepassx.kdb list'
alias key='kp -d ~/keepassx.kdb get'

export MAVEN_OPTS="-Xdebug -Xnoagent -Djava.compiler=NONE -Xrunjdwp:transport=dt_socket,address=8000,server=y,suspend=n -Xmx2g -XX:MaxPermSize=128m"
export M2_HOME="/opt/maven"

# Set to this to use case-sensitive completion
CASE_SENSITIVE="true"

# Uncomment this to disable bi-weekly auto-update checks
DISABLE_AUTO_UPDATE="true"

plugins=(git mvn npm svn)

source $ZSH/oh-my-zsh.sh

# User configuration

export PATH="/home/mrosiek/bin:$PATH"

export EDITOR="vim"
export QT_XFT=true
export GDK_USE_XFT=1

