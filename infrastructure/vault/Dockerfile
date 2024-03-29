# base image
FROM alpine:latest

# set vault version
ENV VAULT_VERSION 1.7.0
ENV VAULT_URL "https://releases.hashicorp.com/vault"

# create a new directory
RUN mkdir /vault

# download dependencies
RUN apk --no-cache add \
      bash \
      ca-certificates \
      wget

# download and set up vault
# https://learn.hashicorp.com/tutorials/vault/deployment-guide

RUN wget --quiet --output-document=/tmp/vault.zip https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_linux_amd64.zip && \
    unzip /tmp/vault.zip -d /vault && \
    rm -f /tmp/vault.zip && \
    chmod +x /vault

# update PATH
ENV PATH="PATH=$PATH:$PWD/vault"

# add the config file
COPY ./config/vault-config.json /vault/config/vault-config.json

# expose port 8200
EXPOSE 8200

# run vault
ENTRYPOINT ["vault"]
