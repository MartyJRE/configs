#!/bin/bash
cd &&
  (
    [ -d "./configs" ] && 
      (
        cd configs &&
          git pull && 
          cd .. &&
          echo "Configs folder existed - pulled from repository"
      ) ||
      (
          git clone git@github.com:MartyJRE/configs.git &&
            echo "Cloned configs to home directory"
      )
  ) &&
  cp -R ./configs/.config/* ./.config &&
  sudo cp ./configs/pacman/pacman.conf /etc/pacman.conf &&
  rsync -am ./configs ./ &&
  echo "Copied all configurations to their desired locations"
