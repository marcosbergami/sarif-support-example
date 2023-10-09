FROM vaikas/nodejsservice:latest

LABEL maintainer="John Doe <youremail@example.com>"

ARG USERNAME=runner
ARG GID=1000

RUN groupadd -g $GID $USERNAME \
    && useradd -u $GID -g $USERNAME -s /bin/bash $USERNAME \
    && mkdir /test \
    && chown -R $USERNAME:$USERNAME /test

USER $USERNAME

WORKDIR /test
