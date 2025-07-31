#!/bin/bash

set -ouex pipefail

# regular packages
dnf5 install -y brightnessctl mako micro nautilus niri openfortivpn pavucontrol swaybg swayidle

## test using niri with rest of cosmic elements
# curl -o /usr/bin/start-cosmic-ext-niri https://raw.githubusercontent.com/drakulix/cosmic-ext-extra-sessions/main/niri/start-cosmic-ext-niri
# curl -o /usr/share/wayland-sessions/cosmic-ext-niri.desktop https://raw.githubusercontent.com/drakulix/cosmic-ext-extra-sessions/main/niri/cosmic-ext-niri.desktop
# sudo chmod +x /usr/bin/start-cosmic-ext-niri
# sed -i 's|Exec=/usr/local/bin/|Exec=/usr/bin/|' /usr/share/wayland-sessions/cosmic-ext-niri.desktop
##

# disable cosmic sesion
mv /usr/share/wayland-sessions/cosmic.desktop /usr/share/wayland-sessions/cosmic.desktop.disabled

# podman socket
systemctl enable podman.socket
