# Base Image
FROM quay.io/fedora/fedora-coreos:stable

RUN curl -o /etc/yum.repos.d/headscale.repo \
    https://copr.fedorainfracloud.org/coprs/jonathanspw/headscale/repo/fedora-42/jonathanspw-headscale-fedora-42.repo \
    && curl -o /etc/yum.repos.d/caddy.repo \
    https://copr.fedorainfracloud.org/coprs/g/caddy/caddy/repo/fedora-42/group_caddy-caddy-fedora-42.repo \
    && curl -o /etc/yum.repos.d/tailscale.repo \
    https://pkgs.tailscale.com/stable/fedora/tailscale.repo \
    && rpm-ostree install bootc caddy fail2ban firewalld headscale neovim node-exporter tailscale \
    && ostree container commit

### LINTING
## Verify final image and contents are correct.
RUN bootc container lint
