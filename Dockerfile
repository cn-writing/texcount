FROM perl:5
LABEL maintainer="Julian Nonino <noninojulian@gmail.com>"

RUN wget https://app.uio.no/ifi/texcount/download.php?file=texcount_3_1_1.zip && \
    unzip download.php?file=texcount_3_1_1.zip && \
    rm -rf download.php?file=texcount_3_1_1.zip && \
    rm -rf Doc && \
    mv texcount.pl /usr/bin/texcount && \
    chmod +x /usr/bin/texcount