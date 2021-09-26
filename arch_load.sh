
# Set up Filesystems

mkfs.ext4 /dev/sda1
mkfs.ext4 /dev/sda3
mkfs.ext4 /dev/sda4
swapon /dev/sda2

mount /dev/sda3 /mnt
mkdir /mnt/boot
mount /dev/sda1 /mnt/boot

pacstrap /mnt base base-devel linux linux-firmware vim openssh grub

locale-gen
echo "LANG=en_US.UTF_8"   >    /etc/locale.conf

useradd $1

pacman -S i3-gaps zsh ranger feh
git clone https://www.github.com/mrcrnkovich/dotfiles

