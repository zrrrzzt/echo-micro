###########################################################
#
# Dockerfile for micro-echo
#
###########################################################

# Setting the base to nodejs 7.7.1
FROM node:7.7.1-alpine

# Maintainer
MAINTAINER Geir Gåsodden

# Bundle app source
COPY . /src

# Change working directory
WORKDIR "/src"

# Install dependencies
RUN npm install --production

ENV NODE_ENV production

# Expose 3000
EXPOSE 3000

# Startup
ENTRYPOINT npm start