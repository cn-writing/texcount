FROM perl:5
LABEL maintainer="Julian Nonino <noninojulian@gmail.com>"

ENV TEXCOUNT_VERSION 3_1_1

RUN wget https://app.uio.no/ifi/texcount/download.php?file=texcount_$TEXCOUNT_VERSION.zip && \
    unzip download.php?file=texcount_$TEXCOUNT_VERSION.zip && \
    rm -rf download.php?file=texcount_$TEXCOUNT_VERSION.zip && \
    rm -rf Doc && \
    mv texcount.pl /usr/bin/texcount && \
    chmod +x /usr/bin/texcount