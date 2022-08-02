#!/bin/bash

install_application () {
  # print which program installation is being attempted
  echo "$1:" &&
    (
      # check whether the program is already installed or not
      which $1 &&
      # if it is installed, skip
        echo "(warn) $1 is already installed - skipping" ||
        # otherwise, call the installation command
        $2
    )
}

install_application_from_aur () {
  # shorthand for installing packages through yay
  install_application $1 "yay -S $1"
}

echo "Installing dependencies" &&
  install_application yay "pacman -S --needed git base-devel && git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si" &&
  install_application lvim "bash <(curl -s https://raw.githubusercontent.com/lunarvim/lunarvim/master/utils/installer/install.sh)" &&
  install_application_from_aur neofetch &&
  install_application_from_aur code &&
  install_application_from_aur webstorm &&
  echo "Installation finished"