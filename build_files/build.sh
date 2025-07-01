#!/bin/bash

set -ouex pipefail

# terminal emulator
dnf -y copr enable pgdev/ghostty
dnf -y install ghostty
dnf5 -y copr disable pgdev/ghostty

# niri
dnf -y copr enable yalter/niri
dnf -y install niri
dnf5 -y copr disable yalter/niri

# regular packages
dnf5 install -y openfortivpn mako swaybg brightnessctl nautilus

# podman socket
systemctl enable podman.socket

## test using niri with rest of cosmic elements
curl -o /usr/bin/cosmic-ext-alternative-startup https://raw.githubusercontent.com/tino376dev/cosmic-ext-extra-sessions-niri-artifacts/main/target/cosmic-ext-alternative-startup
curl -o /usr/bin/start-cosmic-ext-niri https://raw.githubusercontent.com/tino376dev/cosmic-ext-extra-sessions-niri-artifacts/main/target/start-cosmic-ext-niri
curl -o /usr/share/wayland-sessions/cosmic-ext-niri.desktop https://raw.githubusercontent.com/tino376dev/cosmic-ext-extra-sessions-niri-artifacts/main/target/cosmic-ext-niri.desktop

chmod +x /usr/bin/cosmic-ext-alternative-startup
chmod +x /usr/bin/start-cosmic-ext-niri
