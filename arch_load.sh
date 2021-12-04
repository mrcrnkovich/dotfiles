
# Set up Filesystems

mkfs.ext4 /dev/sda1
mkfs.ext4 /dev/sda3
mkfs.ext4 /dev/sda4
swapon /dev/sda2

mount /dev/sda3 /mnt
mkdir /mnt/boot
mount /dev/sda1 /mnt/boot

pacstrap /mnt base base-devel linux linux-firmware vim openssh iwctl 

arch-chroot /mnt

locale-gen
echo "LANG=en_US.UTF_8"   >    /etc/locale.conf

reboot


# move this to the install script
pacman -Syu
pacman -S i3-gaps zsh ranger feh bluetoothctl xorg xorg-utils
git clone https://github.com/mrcrnkovich/dotfiles.git
cd dotfiles && ./install.sh
