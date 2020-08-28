# Docker image for deploying Gatsby to AWS

Based on node-alpine and prep'd with gatsby-cli and aws cli.

## Build and release
1. docker build -t osynlig/gatsby-aws-deploy:latest .
2. docker push osynlig/gatsby-aws-deploy:latest
