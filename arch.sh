#!/bin/bash

ln -sf /usr/share/zoneinfo/America/Mexico_City /etc/localtime
hwclock --systohc
sed -i '207s/.//' /etc/locale.gen
locale-gen
echo "LANG=es_US.UTF-8" >> /etc/locale.conf
echo "KEYMAP=es" >> /etc/vconsole.conf
echo "arch" >> /etc/hostname
echo "127.0.0.1 localhost" >> /etc/hosts
echo "::1       localhost" >> /etc/hosts
echo "127.0.1.1 arch.localdomain arch" >> /etc/hosts
echo root:password | chpasswd 

pacman -S grub networkmanager network-manager-applet dialog wpa_supplicant mtools dosfstools reflector linux-headers avahi xdg-user-dirs xdg-utils gvfs gvfs-smb nfs-utils inetutils dnsutils bluez bluez-utils cups hplip alsa-utils pulseaudio bash-completion openssh rsync reflector acpi acpi_call tlp virt-manager qemu qemu-arch-extra edk2-ovmf bridge-utils dnsmasq vde2 openbsd-netcat iptables-nft ipset firewalld flatpak sof-firmware nss-mdns acpid os-prober ntfs-3g terminus-font sudo qtile xorg gdm alacritty gnome nitrogen thunar picom neovim zsh zsh-completions firefox curl wget nnn code sxiv git

grub-install --target=i386-pc /dev/sda 
grub-mkconfig -o /boot/grub/grub.cfg

systemctl enable gdm
systemctl enable NetworkManager
systemctl enable bluetooth
systemctl enable cups.service
systemctl enable sshd
systemctl enable avahi-daemon
systemctl enable tlp
systemctl enable reflector.timer
systemctl enable fstrim.timer
systemctl enable libvirtd
systemctl enable firewalld
systemctl enable acpid

pacman -S --needed base-devel

git clone https://aur.archlinux.org/yay.git

sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

useradd -m user-p
echo user-p:password | chpasswd
usermod -aG libvirt user-p

echo "user-p ALL=(ALL) ALL" >> /etc/sudoers.d/user-p

printf "\e[1;32m Good!.\e[0m"


