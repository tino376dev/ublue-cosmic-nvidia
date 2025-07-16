#!/bin/bash

set -ouex pipefail

# regular packages
dnf5 install -y brightnessctl mako micro nautilus niri openfortivpn pavucontrol swaybg swayidle

# podman socket
systemctl enable podman.socket

## test using niri with rest of cosmic elements
curl -o /usr/bin/start-cosmic-ext-niri https://raw.githubusercontent.com/drakulix/cosmic-ext-extra-sessions/main/niri/start-cosmic-ext-niri
curl -o /usr/share/wayland-sessions/cosmic-ext-niri.desktop https://raw.githubusercontent.com/drakulix/cosmic-ext-extra-sessions/main/niri/cosmic-ext-niri.desktop
sudo chmod +x /usr/bin/start-cosmic-ext-niri

# git clone https://github.com/Drakulix/cosmic-ext-extra-sessions.git
# cd cosmic-ext-extra-sessions
# git submodule update --init
# just build
# just install-niri
