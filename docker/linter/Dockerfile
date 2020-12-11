FROM node:15

ARG VNU_VERSION=20.6.30

RUN apt-get update && \
    apt-get -y install --no-install-recommends figlet && \
    rm -rf /var/lib/apt/lists/*

RUN npm install --global bootlint@1.1.0

RUN npm install --global standard@14.3.4

RUN curl -L -O https://github.com/validator/validator/releases/download/$VNU_VERSION/vnu.linux.zip && \
    unzip vnu.linux.zip && \
    rm vnu.linux.zip

ENV PATH="/vnu-runtime-image/bin:${PATH}"

COPY start.sh /

RUN chmod +x /start.sh

CMD [ "/start.sh" ]