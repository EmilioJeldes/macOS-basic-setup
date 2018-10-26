# brew
export PATH="/usr/local/bin:$PATH"

#Git branch in prompt.
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\u@\h \[\033[36;2m\]\W\[\033[00m\]\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "

# Alias
alias la='ls -lahG'
alias ls='ls -G'
alias ll='ls -lhG'
alias bash='vim $HOME/.bash_profile'

if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi
if [ -f $(brew --prefix)/etc/bash_completion.d/git-completion.bash ]; then
  . $(brew --prefix)/etc/bash_completion.d/git-completion.bash
fi
if [ -f `brew --prefix`/etc/bash_completion.d/git-flow-completion.bash ]; then
  . `brew --prefix`/etc/bash_completion.d/git-flow-completion.bash
fi

source $HOME/.aliases
source $HOME/.variables