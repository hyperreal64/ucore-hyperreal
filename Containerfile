# Base Image
FROM quay.io/fedora/fedora-coreos:stable

RUN curl -o /etc/yum.repos.d/headscale.repo \
    https://copr.fedorainfracloud.org/coprs/jonathanspw/headscale/repo/fedora-42/jonathanspw-headscale-fedora-42.repo \
    && rpm-ostree install bootc fail2ban firewalld headscale node-exporter neovim \
    && ostree container commit

### LINTING
## Verify final image and contents are correct.
RUN bootc container lint
