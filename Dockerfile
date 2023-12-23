FROM ubuntu:22.04

# Set environment variable for BWS_TOKEN
ARG BWS_TOKEN

RUN apt update -y && \
    apt install -y wget unzip && \
    wget https://github.com/bitwarden/sdk/releases/download/bws-v0.2.1/bws-x86_64-unknown-linux-gnu-0.2.1.zip && \
    unzip bws-x86_64-unknown-linux-gnu-0.2.1.zip

# Use the BWS_TOKEN in the CMD instruction
CMD ["bash", "-c", "./bws list secrets --access-token $BWS_TOKEN"]
