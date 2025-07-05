#!/bin/bash

set -ouex pipefail

dnf5 install -y neovim byobu node-exporter

systemctl enable prometheus-node-exporter.service
systemctl enable podman.socket
