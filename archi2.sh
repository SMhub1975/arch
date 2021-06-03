#!/bin/bash

echo "arch" >> /etc/hostname
echo "LANG=es_AR.UTF-8" >> /etc/locale.conf
echo "es_AR.UTF-8 UTF-8" >> /etc/locale.gen

locale-gen

ln -sf /usr/share/zoneinfo/America/Argentina/Buenos_Aires /etc/localtime

pacman --noconfirm --needed -S networkmanager xorg-server xorg-xinit xf86-video-intel

systemctl enable NetworkManager

pacman --noconfirm --needed -S grub && grub-install --target=i386-pc /dev/sda && grub-mkconfig -o /boot/grub/grub.cfg

pacman --noconfirm --needed -S git gvfs ntfs-3g zip unzip gnu-free-fonts vim

# pacman --noconfirm --needed -S pulseaudio ranger

# pacman --noconfirm --needed -S volumeicon ristretto tumbler htop neofetch papirus-icon-theme arc-gtk-theme vlc engrampa galculator lxappearance thunar 

# curl -O https://raw.githubusercontent.com/SMhub1975/arch/master/00-keyboard.conf

cat <<-'EOF'

        _____   __  __   _               _       __    ___    ______   _____
       / ____| |  \/  | | |             | |     /_ |  / _ \  |____  | | ____|
      | (___   | \  / | | |__    _   _  | |__    | | | (_) |     / /  | |__
       \___ \  | |\/| | | '_ \  | | | | | '_ \   | |  \__, |    / /   |___ \
       ____) | | |  | | | | | | | |_| | | |_) |  | |    / /    / /     ___) |
      |_____/  |_|  |_| |_| |_|  \__,_| |_.__/   |_|   /_/    /_/     |____/

# arch-chroot /mnt
# Ingrese root passwd
# useradd -m -g wheel archi
# Ingrese archi passwd
# Cambie shell (chsh -s /bin/zsh)
# Edite xinit para arrancar dwm y smbar
# Marcar particion booteable
# git clone https://aur.archlinux.org/brave-bin.git
# git clone https://git.suckless.org/dwm
# git clone https://git.suckless.org/st
# git clone https://github.com/SMhub1975/arch.git

EOF
