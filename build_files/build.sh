#!/bin/bash

set -ouex pipefail

dnf5 copr enable -y jonathanspw/headscale
dnf5 install -y node-exporter headscale 
dnf5 install --setopt=install_weak_deps=False -y neovim

systemctl enable podman.socket

rm -rf /usr/etc
