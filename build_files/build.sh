#!/bin/bash

set -ouex pipefail

# rpm --import https://packages.microsoft.com/keys/microsoft.asc
# sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'

# regular packages
dnf install -y brightnessctl gcc mako micro nautilus niri openfortivpn pavucontrol swaybg swayidle

# remove unused packages
dnf remove -y firefox

# clean up
dnf clean all

# flatpaks
/usr/bin/flatpak remote-add --system --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

# podman socket
systemctl enable podman.socket

##### test using niri with rest of cosmic elements #####
# curl -o /usr/bin/start-cosmic-ext-niri https://raw.githubusercontent.com/drakulix/cosmic-ext-extra-sessions/main/niri/start-cosmic-ext-niri
# curl -o /usr/share/wayland-sessions/cosmic-ext-niri.desktop https://raw.githubusercontent.com/drakulix/cosmic-ext-extra-sessions/main/niri/cosmic-ext-niri.desktop
# sudo chmod +x /usr/bin/start-cosmic-ext-niri
# sed -i 's|Exec=/usr/local/bin/|Exec=/usr/bin/|' /usr/share/wayland-sessions/cosmic-ext-niri.desktop
########################################################
