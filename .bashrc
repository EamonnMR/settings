alias server="python -m SimpleHTTPServer 8000"
alias serverp="python -m SimpleHTTPServer"
alias download="rsync -vzhra -e ssh --rsync-path='sudo rsync'"
alias sheepshaver="sudo padsp SheepShaver"

# Python stuff
alias venv="virtualenv venv" # Still defaulting to python2
alias venv2="virtualenv venv2" # Creates an explicitly python2 venv for your 2/3 projects
alias venv3="virtualenv -p python3 venv"
alias vba="source venv/bin/activate"
alias vba2="source venv2/bin/activate" #Activates secondary python2 venv

alias dea="deactivate"
alias pir="pip install -r requirements.txt"

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
     alias open="xdg-open"
     ;;

   # Add more strings here if I ever need this on a different OS for some reason

   *)
     echo 'Bashrc not set up to handle this OS - some aliases may be missing or broken'
     ;;
esac
