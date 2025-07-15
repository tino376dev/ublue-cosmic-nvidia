#!/bin/bash

set -ouex pipefail

# regular packages
dnf5 install -y brightnessctl mako micro nautilus niri openfortivpn pavucontrol swaybg swayidle

# podman socket
systemctl enable podman.socket
