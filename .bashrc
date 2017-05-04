alias server="python -m SimpleHTTPServer 8000"
alias serverp="python -m SimpleHTTPServer"
alias download="rsync -vzhra -e ssh --rsync-path='sudo rsync'"

# Load NVM (Only if NVM is installed)
export NVM_DIR="$HOME/.nvm"

if [ -d "$NVM_DIR" ]; then
  [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
  [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
fi

#From: http://stackoverflow.com/a/27776822
# Respond to different OSs differently (so you can use the same bashrc across machines)

case "$(uname -s)" in

  Darwin)
     ssh-add -K  # Non-annoying SSH Add)
     alias psg="ps -ax | grep";
     ;;

  Linux)
     alias psg="ps -aux | grep";
     ;;

   # Add more strings here if I ever need this on a different OS for some reason

   *)
     echo 'Bashrc not set up to handle this OS - some aliases may be missing or broken'
     ;;
esac
