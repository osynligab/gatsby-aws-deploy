FROM node:12.18.3-alpine

# Install Gatsby CLI
RUN npm install -g gatsby-cli

# Install AWS CLI and it's requirements
RUN apk add --no-cache python py-pip
RUN pip install awscli

# Just to make sure its installed alright
RUN aws --version
RUN node -v && npm -v
