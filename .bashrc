alias server="python3 -m http.server" 
alias download="rsync -vzhra -e ssh --rsync-path='sudo rsync'"
alias sheepshaver="sudo padsp SheepShaver"

# Python stuff
# TODO: Set this up to work with pyenv
alias venv="virtualenv venv" # Still defaulting to system python
alias venv2="virtualenv -p python2 venv2" # Creates an explicitly python2 venv for your 2/3 projects
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

# Cribbed some nice stuff from lubuntu's default

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
  xterm-color|*-256color) color_prompt=yes;;
esac


# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
  # We have color support; assume it's compliant with Ecma-48
  # (ISO/IEC-6429). (Lack of such support is extremely rare, and such
  # a case would tend to support setf rather than setaf.)
  color_prompt=yes
    else
  color_prompt=
    fi
fi

if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
unset color_prompt force_color_prompt


# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

#From: http://stackoverflow.com/a/27776822
# Respond to different OSs differently (so you can use the same bashrc across machines)

case "$(uname -s)" in

  Darwin)  # OSX
     ssh-add -K  # Non-annoying SSH Add)
     alias psg="ps -ax | grep";
     alias clip="pbcopy";
     ;;

  Linux)
     # Find this running program
     alias psg="ps -aux | grep";
     # I like OSX's 'open'
     alias open="xdg-open"
     # Renoise needs to run as root for the audio to sound good and needs the VST path set.
     alias renoise="export VST_PATH="$VST_PATH:/usr/lib/vst:~/.vst:/usr/lib/lxvst" && sudo -E bash -c 'renoise'"
     # Getting stuff into the clipboard (requires xClip)
     alias clip="xclip -selection c"
     ;;

   # Add more strings here if I ever need this on a different OS for some reason

   *)
     echo 'Bashrc not set up to handle this OS - some aliases may be missing or broken'
     ;;
esac
