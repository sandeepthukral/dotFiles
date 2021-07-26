export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export BROWSERSTACK_APP_ID=bs://
export BROWSERSTACK_KEY=
export BROWSERSTACK_USERNAME=

# aliases overridden
alias gcd="git checkout dev"
alias gpul="git fetch;git pull"

ssh-add ~/.ssh/id_1. ## replace with work repository key
ssh-add ~/.ssh/github-1 ## replace with personal github key

alias teach="code --extensions-dir ~/code_profiles/egghead/exts --user-data-dir ~/code_profiles/egghead/data"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/USERNAME/.sdkman"
[[ -s "/Users/USERNAME/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/USERNAME/.sdkman/bin/sdkman-init.sh"

if [ $ITERM_SESSION_ID ]; then
  export PROMPT_COMMAND='echo -ne "\033];${PWD##*/}\007"; ':"$PROMPT_COMMAND";
fi

function iterm2_print_user_vars() {
  iterm2_set_user_var gitBranch $((git branch 2> /dev/null) | grep \* | cut -c3-)
}
