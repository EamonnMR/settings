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
  
# Blender Exporters
# Manual Installation required later, but get the files up front
git clone git@github.com:godotengine/godot-blender-exporter.git
git clone git@github.com:BabylonJS/BlenderExporter.git

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

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.0/install.sh | bash

# Godot Engine
GODOT_VER="3.1.1";
cd Downloads
curl -f "https://downloads.tuxfamily.org/godotengine/3.1.1/Godot_v$GODOT_VER-stable_x11.64.zip" -o "godot_$GODOT_VER.zip"
unar "godot_$GODOT_VER.zip"
cd ..
mv "Downloads/Godot_v$GODOT_VER-stable_x11.64.zip" .
chmod a+x "Godot_v$GODOT_VER-stable_x11.64"

# Classic Mac Emulator Dependencies:
sudo apt install \
  build-essential \
  libgtk2.0-dev \
  x11proto-xf86dga-dev \
  libesd0-dev \
  libxxf86dga-dev \
  libxxf86dga1 \
  libsdl1.2-dev \
  osspd

# Dotfiles
git clone https://github.com/EamonnMR/settings.git  # Cursed and re-cursed!
mv settings/.bashrc .
mv settings/.Xmodmap .
mv settings/.vimrc .
mv settings/.tmux.conf .

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
  -new-tab -url http://blog.eamonnmr.com/2018/10/os9-on-ubuntu/ \
  -new-tab -url https://github.com/godotengine/godot-blender-exporter \
