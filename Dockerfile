# Use Ubuntu 22.04 as the base image
FROM ubuntu:22.04

# Update package list and install necessary dependencies
RUN apt-get update && apt-get install -y \
    curl \
    && curl https://get.volta.sh | bash \
    && rm -rf /var/lib/apt/lists/*

CMD [ "volta", "version" ]
