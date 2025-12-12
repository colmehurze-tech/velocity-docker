# Building Velocity from archlinux image
FROM archlinux:latest
# Setting the working directory
WORKDIR /workspace
# Copying system files
COPY files/os-release /etc/
COPY files/hostname /etc/
COPY files/.zshrc /etc/skel/
COPY files/config.jsonc /etc/skel/.config/fastfetch/
COPY files/.zsh.d /etc/skel/
COPY files/velocity.txt /usr/share/icons/
# Copying files into the container
COPY . .
# Installing configuration files
RUN chmod +x *.sh
RUN ./install.sh
# Switching to the new user
USER user
# Running the shell on container startup
CMD [/usr/bin/zsh]

