alias psg="ps -aux | grep"
alias server="python -m SimpleHTTPServer 8000"
alias serverp="python -m SimpleHTTPServer"
alias download="rsync -vzhra -e ssh --rsync-path='sudo rsync'"

export NVM_DIR="/home/emr/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

ssh-add -K # So you don't need to keep typing in the passphrase
