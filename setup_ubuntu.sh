# Latest Packages
sudo apt update

sudo apt upgrade

# Basic Development Tools
sudo apt install
  vim \
  gimp \
  blender \
  git \
  xclip \
  ack-grep \
  tmux \
  curl \
  wget \
  
# (to be installed later)
# TODO: Automate this install
curl -f https://github.com/BabylonJS/BlenderExporter/raw/master/Blender2Babylon-6.2.zip
  
# Games
sudo apt install \
  mupen64 \
  dosbox \
  wine \
  gnash \
  browser-plugin-freshplayer-pepperflash \
  
# Media
sudo apt install \
  vlc \
  unar \
  audacity \

# Misc Tools
sudo apt install \
  build-essential \
  tiled \
  audacity \
  codeblocks \
  guile-2.0-dev \
  jsonlint \
  docker.io \
  libglu1-mesa \
  sbcl \
  htop \
  libsdl2-dev \
  
sudo snap install go --classic

sudo apt install software-properties-common
sudo apt-add-repository --yes --update ppa:ansible/ansible
sudo apt install ansible

curl https://sh.rustup.rs -sSf | sh

# For Mac Emulator:
sudo apt install \
  build-essential \
  libgtk2.0-dev \
  x11proto-xf86dga-dev \
  libesd0-dev \
  libxxf86dga-dev \
  libxxf86dga1 \
  libsdl1.2-dev \
  osspd

# Download dotfiles
curl https://github.com/EamonnMR/settings/blob/master/.bashrc --output .bashrc
curl https://github.com/EamonnMR/settings/blob/master/.Xmodmap --output .Xmodmap
curl https://github.com/EamonnMR/settings/blob/master/.vimrc --output .vimrc
curl https://github.com/EamonnMR/settings/blob/master/.tmux.conf --output .tmux.conf

# Install Vundle plugins
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall

# Manual Installs/settings
firefox \
  -new-tab -url about:settings \
  -new-tab -url https://dzone.com/articles/how-turn-firefox-browser-cache \
  -new-tab -url https://flutter.dev/docs/get-started/install/linux \
  -new-tab -url https://doc.babylonjs.com/resources/blender \
  -new-tab -url https://www.erb.pw/how-to-install-syncterm-for-linux-from-source/ \
  -new-tab -url "https://backstage.renoise.com/frontend/app/index.html#/login" \
  -new-tab -url http://blog.eamonnmr.com/2018/10/os9-on-ubuntu/
