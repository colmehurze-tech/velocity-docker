# Downloading and setting up zsh and fastfetch
pacman -Sy
pacman -S --noconfirm zsh fastfetch unzip
# Downloading oh-my-zsh
sh -c "$(wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
# Downloading oh-my-posh
curl -s https://ohmyposh.dev/install.sh | bash -s
# Installing other packages
pacman -S --noconfirm --needed base-devel git sudo nano vim go
# Setting up the new user
./user-setup.sh
# Setting up yay
git clone https://aur.archlinux.org/yay.git
cd yay
useradd -m builder
chown -R builder:builder .
su builder -c "makepkg -si --noconfirm"
