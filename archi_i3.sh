#!/bin/bash

echo "arch" >> /etc/hostname
echo "LANG=es_AR.UTF-8" >> /etc/locale.conf
echo "es_AR.UTF-8 UTF-8" >> /etc/locale.gen

locale-gen

ln -sf /usr/share/zoneinfo/America/Argentina/Buenos_Aires /etc/localtime

pacman --noconfirm --needed -S networkmanager xorg-server xorg-xinit xf86-video-intel i3-gaps i3blocks i3status vim ranger rxvt-unicode gnu-free-fonts 

systemctl enable NetworkManager

pacman --noconfirm --needed -S grub && grub-install --target=i386-pc /dev/sda && grub-mkconfig -o /boot/grub/grub.cfg

pacman --noconfirm --needed -S zsh xorg-xbacklight sxiv xwallpaper picom git gvfs xdg-user-dirs ntfs-3g zip unzip pulseaudio pulsemixer xorg-xrandr dmenu

pacman --noconfirm --needed -S htop neofetch firefox elinks neomutt zathura zathura-pdf-mupdf ncmpcpp mpd mpv calcurse

git clone https://github.com/SMhub1975/arch.git

cat <<-'EOF'

        _____   __  __   _               _       __    ___    ______   _____
       / ____| |  \/  | | |             | |     /_ |  / _ \  |____  | | ____|
      | (___   | \  / | | |__    _   _  | |__    | | | (_) |     / /  | |__
       \___ \  | |\/| | | '_ \  | | | | | '_ \   | |  \__, |    / /   |___ \
       ____) | | |  | | | | | | | |_| | | |_) |  | |    / /    / /     ___) |
      |_____/  |_|  |_| |_| |_|  \__,_| |_.__/   |_|   /_/    /_/     |____/


# Ingrese root passwd
# useradd -m -g wheel archi
# Ingrese archi passwd
# Cambie shell (chsh -s /bin/zsh)
# Edite xinit para arrancar i3

EOF

