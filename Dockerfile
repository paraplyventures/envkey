FROM --platform=linux/amd64 debian:bookworm-slim

WORKDIR /app

RUN apt-get update && apt-get install -y curl unzip && \
    curl -L https://envkey-releases.s3.amazonaws.com/apicommunity/release_artifacts/2.3.6/api.community.zip -o api.community.zip && \
    unzip api.community.zip && \
    rm api.community.zip

ENTRYPOINT [ "./envkey-api" ]