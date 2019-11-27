# Latest Packages
sudo apt update
sudo apt upgrade

sudo add-apt-repository universe

# Basic Development Tools
sudo apt install \
  vim \
  gimp \
  blender \
  git \
  xclip \
  ack-grep \
  tmux \
  curl \
  wget \
  
# Dotfiles
git clone https://github.com/EamonnMR/settings.git  # Cursed and re-cursed!
ln -s settings/.bashrc
ln -s settings/.Xmodmap .
ln -s settings/.vimrc .
ln -s settings/.tmux.conf .
ln -s settings/lubuntu/startup.sh

git config --global user.email "Eamonn.m.r@gmail.com"
git config --global user.name "EamonnMR"
git config --global core.editor "vim"

# Install Vundle plugins
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall

# Apply xmodmap
xmodmap ~/.Xmodmap

# Blender Exporters
# Manual Installation required later, but get the files up front
git clone git@github.com:godotengine/godot-blender-exporter.git
git clone git@github.com:BabylonJS/BlenderExporter.git
# Still not updated for Blender 2.8
# git clone git@github.com:godotengine/collada-exporter.git

# ln -s collada-exporter/io_scene_dae /usr/share/blender/scripts/addons/

# Python
sudo apt install virtualenv
sudo apt-get install -y make build-essential libssl-dev zlib1g-dev libbz2-dev \
libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev libncursesw5-dev \
xz-utils tk-dev libffi-dev liblzma-dev python-openssl git;
git clone https://github.com/pyenv/pyenv.git ~/.pyenv

# Cpp
sudo apt install lldb clang gdb

# Games
sudo apt install \
  mupen64 \
  dosbox \
  wine \

# Not supported anymore !? :O
# gnash \
  browser-plugin-freshplayer-pepperflash \

dpkg --add-architecture i386 && apt-get update && apt-get install wine32

  
# Media
sudo apt install \
  vlc \
  unar \
  irssi \
  audacity \

# Misc Tools
sudo apt install \
  build-essential \
  tiled \
  codeblocks \
  guile-2.0-dev \
  jsonlint \
  libglu1-mesa \
  sbcl \
  htop \
  libsdl2-dev \
  tlp \
  docker.io \
  
sudo add-apt-repository ppa:linuxuprising/apps
sudo apt install tlpui
  
# sudo snap install go --classic

sudo apt install software-properties-common
sudo apt-add-repository --yes --update ppa:ansible/ansible
sudo apt install ansible

#curl https://sh.rustup.rs -sSf | sh

#curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.0/install.sh | bash

# Godot Engine
GODOT_VER="3.1.1";
cd Downloads
curl -f "https://downloads.tuxfamily.org/godotengine/3.1.1/Godot_v$GODOT_VER-stable_x11.64.zip" -o "godot_$GODOT_VER.zip"
unar "godot_$GODOT_VER.zip"
cd ..

# Classic Mac Emulator Dependencies:
#
sudo apt install \
  build-essential \
  libgtk2.0-dev \
  x11proto-xf86dga-dev \
  libesd0-dev \
  libxxf86dga-dev \
  libxxf86dga1 \
  libsdl1.2-dev \
  osspd


# Manual Installs/settings
firefox \
  -new-tab -url https://dzone.com/articles/how-turn-firefox-browser-cache \
  -new-tab -url https://flutter.dev/docs/get-started/install/linux \
  -new-tab -url https://doc.babylonjs.com/resources/blender \
  -new-tab -url https://www.erb.pw/how-to-install-syncterm-for-linux-from-source/ \
  -new-tab -url "https://backstage.renoise.com/frontend/app/index.html#/login" \
  -new-tab -url https://www.renoise.com/tools/midi-convert
  -new-tab -url http://blog.eamonnmr.com/2018/10/os9-on-ubuntu/ \
  -new-tab -url https://github.com/godotengine/godot-blender-exporter \

exit 0
