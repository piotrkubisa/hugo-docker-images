#!/usr/bin/env bash
#
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

SLATE_VERSION="1.4"
SLATE_DOWNLOAD_URL="https://github.com/lord/slate/archive/v${SLATE_VERSION}.tar.gz"
SLATE_TAR_NAME="slate-${SLATE_VERSION}"

SLATE_EXTRACT_TARGET="/opt"
SLATE_DIR="${SLATE_EXTRACT_TARGET}/${SLATE_TAR_NAME}"

curl -sL "$SLATE_DOWNLOAD_URL" -o "${SLATE_TAR_NAME}.tar.gz" \
    && tar -C ${SLATE_EXTRACT_TARGET} -xzvf ${SLATE_TAR_NAME}.tar.gz

go run bundler.go -slate ${SLATE_DIR}