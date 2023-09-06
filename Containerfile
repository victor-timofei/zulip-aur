FROM ghcr.io/victor-timofei/arch-nightly:latest

RUN yes | sudo -u builder paru -S zulip-desktop  \
  pipewire \
  alsa-utils \
  && useradd \
  -u 1000 -m u1000

ENTRYPOINT [ "zulip" ]
