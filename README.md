# ucore-hyperreal

This is a customized version of Fedora CoreOS that includes the following:
- [Headscale](https://headscale.net)
- fail2ban
- firewalld
- Prometheus Node Exporter
- Neovim

It was originally based on ublue-os/ucore-minimal, but I really don't need all the extra goodies for my use-case, so this image now uses vanilla fedora-coreos:stable. Technically, that means it's no longer "ucore" and this repo is a misnomer; however, the use-case doesn't care what it's called. If use-cases started caring what things are called then we'd have a big problem, and naming conventions would be the least of our concerns.
