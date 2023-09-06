FROM ghcr.io/victor-timofei/arch-nightly:latest

RUN yes | pacman -S base-devel pipewire alsa-utils && \
  yes '' | sudo -u builder paru -S zulip-desktop && \
  rm -rf rm -rf /opt/builder/* && \
  yes | pacman -Rs base-devel && \
  useradd -u 1000 -m u1000

ENTRYPOINT [ "zulip" ]
