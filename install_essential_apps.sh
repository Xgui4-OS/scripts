#!/usr/bin/bash

# Variables
RED="\e[31m"
ENDCOLOR="\e[0m"

echo "This bash script is experimental and a work-in-progress !"
echo "Important : this bash script is made for EndeavourOS in mind as yay is not availaible by default in Arch."
read -p 'Do you want to update the system before installing the apps (Recommended) (Y/N) ?' confirm

# Update the system (recommended)
if [[ $confirm == "Y" || $confirm == "y" ]]; then
    sudo pacman -Syu
    yay -Syu || echo -e "${RED}[Error]${ENDCOLOR} yay is not installed or have failed to run."
fi

# Installing packages with pacman
sudo pacman -S --needed hyprland waybar hyprpaper hyprlock gnome-keyring sawync git pipewire wireplumber xdg-desktop-portal-hyprland hyprpolkitagent qt5-wayland and qt6-wayland ly nwg-look

# Enable Ly login manager
sudo systemctl enable ly

# Installing packages from the AUR
yay -S waypaper || echo -e "${RED}[Error]${ENDCOLOR} yay is not installed or have failed to run."
yay -S wofi || echo -e "${RED}[Error]${ENDCOLOR} yay is not installed or have failed to run."
yay -S emote || echo -e "${RED}[Error]${ENDCOLOR} yay is not installed or have failed to run."
yay -S hyprshell || echo -e "${RED}[Error]${ENDCOLOR} yay is not installed or have failed to run."
