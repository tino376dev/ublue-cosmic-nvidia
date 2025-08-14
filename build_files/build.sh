#!/bin/bash

set -ouex pipefail

# regular packages
dnf5 install -y brightnessctl gcc mako micro nautilus niri openfortivpn pavucontrol swaybg swayidle

# remove unused packages
dnf remove -y firefox

# flatpaks
/usr/bin/flatpak remote-add --system --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
# flatpak install -y --system flathub dev.zed.Zed
# flatpak install -y --system flathub app.zen_browser.zen
# flatpak install -y --system org.remmina.Remmina
# flatpak install -y --system md.obsidian.Obsidian

# clean up
dnf clean all

## test using niri with rest of cosmic elements
# curl -o /usr/bin/start-cosmic-ext-niri https://raw.githubusercontent.com/drakulix/cosmic-ext-extra-sessions/main/niri/start-cosmic-ext-niri
# curl -o /usr/share/wayland-sessions/cosmic-ext-niri.desktop https://raw.githubusercontent.com/drakulix/cosmic-ext-extra-sessions/main/niri/cosmic-ext-niri.desktop
# sudo chmod +x /usr/bin/start-cosmic-ext-niri
# sed -i 's|Exec=/usr/local/bin/|Exec=/usr/bin/|' /usr/share/wayland-sessions/cosmic-ext-niri.desktop
##

# podman socket
systemctl enable podman.socket
