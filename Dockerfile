FROM node:12.18.3-alpine

WORKDIR /app

# We have native dependencies and therefore need theese tools
#RUN apk add --update --no-cache --repository http://dl-3.alpinelinux.org/alpine/edge/community --repository http://dl-3.alpinelinux.org/alpine/edge/main vips-dev
RUN apk add --no-cache python py-pip make g++ gcc

# Install Gatsby CLI
RUN npm install -g gatsby-cli

# Install AWS CLI and it's requirements
RUN pip install awscli

# Just to make sure its installed alright
RUN aws --version
RUN node -v && npm -v
