# Allow build scripts to be referenced without being copied into the final image
FROM scratch AS ctx

# Base Image
FROM quay.io/fedora/fedora-coreos:stable

### MODIFICATIONS
## make modifications desired in your image and install packages by modifying the build.sh script
## the following RUN directive does all the things required to run "build.sh" as recommended.

RUN curl -o /etc/yum.repos.d/headscale.repo \
    https://copr.fedorainfracloud.org/coprs/jonathanspw/headscale/repo/fedora-42/jonathanspw-headscale-fedora-42.repo \
    && rpm-ostree install bootc fail2ban firewalld headscale node-exporter neovim \
    && ostree container commit

### LINTING
## Verify final image and contents are correct.
RUN bootc container lint
