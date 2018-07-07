
# +++++ Git branch in prompt +++++
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\u@\h \[\033[36;2m\]\W\[\033[00m\]\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "

# +++++ ALIAS +++++
alias la='ls -lahG'
alias ls='ls -G'
alias ll='ls -lhG'
alias json='python -mjson.tool'
alias gc='git checkout'
alias gb='git branch'
alias cpgit='cp ~/.gitignore'

# ++++++ ENV ++++++
# JAVA_HOME
export JAVA_HOME=$(/usr/libexec/java_home)
# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Setting PATH for Python 3.6
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.6/bin:${PATH}"
export PATH
