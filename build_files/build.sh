#!/bin/bash

set -ouex pipefail

# terminal emulator
# dnf -y copr enable pgdev/ghostty
# dnf -y install ghostty
# dnf5 -y copr disable pgdev/ghostty

# niri
dnf -y copr enable yalter/niri
dnf -y install niri
dnf5 -y copr disable yalter/niri

# regular packages
dnf5 install -y openfortivpn brightnessctl nautilus

# podman socket
systemctl enable podman.socket
