FROM node:12.18.3

WORKDIR /app

RUN apt-get update && apt-get install -y python3
RUN curl -sO https://bootstrap.pypa.io/get-pip.py
RUN python3 get-pip.py

# Install AWS CLI and it's dependenices
RUN pip install awscli

# Install Gatsby CLI
RUN npm install -g gatsby-cli

# Just to make sure its installed alright
RUN aws --version
RUN node -v && npm -v
