from ubuntu:20.04

RUN apt update \
    && apt install -y wget \
    && apt install -y --no-install-recommends dkms udev gnupg \
    && rm -rf /var/lib/apt/lists/*

RUN wget -q -O - https://www.pivccu.de/piVCCU/public.key | apt-key add - \
    && bash -c 'echo "deb https://www.pivccu.de/piVCCU stable main" > /etc/apt/sources.list.d/pivccu.list' \
    && apt update \
    && (apt install -y --no-install-recommends pivccu-modules-dkms || true) \
    && rm -rf /var/lib/apt/lists/*

ADD entrypoint.sh /bin/

ENTRYPOINT [ "entrypoint.sh" ]
