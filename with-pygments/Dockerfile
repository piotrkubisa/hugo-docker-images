# MIT License
# 
# Copyright (c) 2016 Piotr Kubisa
# 
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
# 
# The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Software.
# 
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.

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