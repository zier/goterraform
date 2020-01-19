FROM golang:1.12.9-alpine3.10

# Install git
RUN apk update && \
    apk upgrade && \
    apk add git && \
    apk add zip

# Install terraform
RUN wget --quiet https://releases.hashicorp.com/terraform/0.12.19/terraform_0.12.19_linux_amd64.zip \
    && unzip terraform_0.12.19_linux_amd64.zip \
    && mv terraform /usr/bin \
    && rm terraform_0.12.19_linux_amd64.zip
