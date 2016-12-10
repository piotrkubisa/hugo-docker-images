FROM golang:latest

ENV HUGO_VERSION 0.17
ENV HUGO_DOWNLOAD_URL https://github.com/spf13/hugo/releases/download/v${HUGO_VERSION}/hugo_${HUGO_VERSION}_Linux-64bit.tar.gz
ENV HUGO_DIRNAME hugo_${HUGO_VERSION}_linux_amd64

RUN curl -sL "$HUGO_DOWNLOAD_URL" -o hugo.tar.gz \ 
    && tar -C /usr/local -xzvf hugo.tar.gz \
    && ln -s "/usr/local/${HUGO_DIRNAME}/${HUGO_DIRNAME}" /usr/local/bin/hugo \
    && rm hugo.tar.gz

RUN apt-get update \
    && apt-get install -y python3-pygments

WORKDIR /data
VOLUME ["/data"]
