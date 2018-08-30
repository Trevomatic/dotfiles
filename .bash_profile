source '/Users/thall/code/blessclient/lyftprofile' # bless ssh alias

if [ -f $(brew --prefix)/etc/bash_completion ]; then
   . $(brew --prefix)/etc/bash_completion
fi

alias sync='~/src/hacktools/sync-to-onebox-v3.sh'
