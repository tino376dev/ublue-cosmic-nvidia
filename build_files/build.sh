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
curl -o /sbin/start-cosmic-ext-niri https://raw.githubusercontent.com/drakulix/cosmic-ext-extra-sessions/main/niri/start-cosmic-ext-niri
curl -o /usr/share/wayland-sessions/cosmic-ext-niri.desktop https://raw.githubusercontent.com/drakulix/cosmic-ext-extra-sessions/main/niri/cosmic-ext-niri.desktop
