if [ -z "$SSH_AUTH_SOCK" ] ; then
    echo 'starting ssh-agent...'
    eval `ssh-agent -s`
    echo 'adding keys...'
    ssh-add ~/.ssh/git/id_rsa
    ssh-add ~/.ssh/default/id_rsa
    ssh-add ~/.ssh/ieng/id_rsa
fi

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
