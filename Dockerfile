FROM ubuntu:22.04
RUN apt-get update && apt-get install -y python3 ca-certificates bzip2 \
    && rm -rf /var/lib/apt/lists/*

COPY cellranger-7.2.0.tar.gz /opt/
RUN cd /opt && tar -xzf cellranger-7.2.0.tar.gz \
    && ln -s /opt/cellranger-7.2.0/cellranger /usr/local/bin/cellranger \
    && rm cellranger-7.2.0.tar.gz

ENV PATH="/opt/cellranger-7.2.0:$PATH"

