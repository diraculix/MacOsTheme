#! /usr/bin/bash
USER=`whoami`

# dock setup (plank)
sudo apt install plank
plank
cd /home/$USER/.themes
git clone https://github.com/x64Bits/plank-themes.git
git fetch && git status && git pull
sudo mv -f plank-themes/* /usr/share/plank/themes/

# install Big Sur theme
mkdir /home/$USER/.themes
cd /home/$USER/.themes
git clone https://github.com/vinceliuice/WhiteSur-gtk-theme.git --depth=1
cd WhiteSur-gtk-theme
git fetch && git status && git pull
./install.sh -u
./install.sh -l -o normal -c Light -c Dark -a all -t blue -N mojave --normal --right
./tweaks.sh -f alt
sudo ./tweaks.sh -g default

# install Big Sur icons
mkdir /home/$USER/.icons
cd /home/$USER/.icons
git clone https://github.com/vinceliuice/WhiteSur-icon-theme.git
cd WhiteSur-icon-theme
git fetch && git status && git pull
./install.sh -u
./install.sh -a

# install Big Sur cursor
mkdir /home/$USER/.cursors
cd /home/$USER/.cursors
git clone https://github.com/vinceliuice/WhiteSur-cursors.git
cd WhiteSur-cursors
sudo ./install.sh

# install MacOS wallpapers
cd /home/$USER/Downloads
git clone https://github.com/vinceliuice/WhiteSur-wallpapers.git
cd WhiteSur-wallpapers
sudo ./install-gnome-backgrounds.sh
