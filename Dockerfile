FROM jlesage/baseimage-gui:ubuntu-20.04-v3

ENV APP_NAME="Steam" \
    XDG_CACHE_HOME=/steam/xdg/cache \
    XDG_CONFIG_HOME=/steam/xdg/config \
    XDG_DATA_HOME=/steam/xdg/data \
    XDG_RUNTIME_DIR=/tmp/run/user/app

RUN set -x && \
    dpkg --add-architecture i386 && \
    apt-get update -y && \
    apt-get install -y --no-install-recommends \
      sudo \
      xterm \
      wget \
      software-properties-common && \
    echo "========== Setup sudoers ==========" && \
    echo "app    ALL=(ALL:ALL) NOPASSWD: ALL" >> /etc/sudoers && \
    echo "========== Install Steam ==========" && \
    add-apt-repository multiverse && \
    apt-get update -y && \
    apt-get install steam -y && \
    apt-get autoremove -y && \
    rm -rf /tmp/* && \
    rm -rf /var/lib/apt/lists/*


EXPOSE 5800

COPY rootfs/ /
