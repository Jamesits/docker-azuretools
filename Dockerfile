FROM debian:bookworm-slim
ARG DEBIAN_FRONTEND="noninteractive"

RUN apt-get update -y \
    && apt-get install -y curl ca-certificates python3 \
    && rm -rf /var/lib/apt/lists/*

# Docker
RUN curl -L https://get.docker.com | bash - \
    && rm -rf /var/lib/apt/lists/*

# Azure CLI
RUN curl -sL https://aka.ms/InstallAzureCLIDeb | bash - \
    && rm -rf /var/lib/apt/lists/*

# AzCopy
RUN curl -L https://aka.ms/downloadazcopy-v10-linux | tar -xvz --directory=/usr/local/bin --strip-components=1 --wildcards "azcopy_linux_*/azcopy"
