alias server="python -m SimpleHTTPServer 8000"
alias serverp="python -m SimpleHTTPServer"
alias download="rsync -vzhra -e ssh --rsync-path='sudo rsync'"

# TODO: Detect the ~/.nvm folder and only exec if it's present
# export NVM_DIR="/home/emr/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

ssh-add -K # So you don't need to keep typing in the passphrase
# From: http://stackoverflow.com/a/27776822
# Respond to different OSs differently (so you can use the same bashrc across machines)

case "$(uname -s)" in

   Darwin)
     alias psg="ps -ax | grep";
     ;;

   Linux)
     alias psg="ps -aux | grep";
     ;;

   # Add here more strings to compare

   *)
     echo 'Bashrc not set up to handle this OS - some aliases may be missing or broken'
     ;;
esac
