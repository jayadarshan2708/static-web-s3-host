FROM amazonlinux:2
RUN yum install -y \
    git \
    unzip \
    wget \
    awscli \
    terraform \
    && yum clean all
WORKDIR  /app