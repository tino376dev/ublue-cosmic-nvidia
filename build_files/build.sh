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


## testing
git clone https://github.com/Drakulix/cosmic-ext-extra-sessions.git
cd cosmic-ext-extra-sessions
git submodule update --init
just build
just install-niri
