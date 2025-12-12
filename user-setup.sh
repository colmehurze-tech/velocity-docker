#!/bin/bash

# Create user with sudo permissions
useradd -m -G wheel -s /usr/bin/zsh user
echo "user:velocity" | chpasswd

# Set up sudo for wheel group (uncomment %wheel line in sudoers)
echo "%wheel ALL=(ALL) ALL" >> /etc/sudoers


# Set zsh as default shell
echo "Setting zsh as default shell..."
sed -i 's|SHELL=/bin/bash|SHELL=/usr/bin/zsh|' /etc/default/useradd