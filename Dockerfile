FROM ghcr.io/parkervcp/yolks:wine_latest
USER root
RUN apt-get update && apt-get install -y --no-install-recommends xvfb x11vnc libvncserver1 libvncclient1 libxtst6 libxrender1 libxcomposite1 libxdamage1 libxfixes3 libxi6 libxinerama1 libxrandr2 libjpeg62-turbo libx11-6 libxcb1 && apt-get clean && rm -rf /var/lib/apt/lists/*
USER container
ENV USER=container HOME=/home/container
WORKDIR /home/container
