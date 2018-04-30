# Setting the base to nodejs 8.9.1
FROM node:8.9.1-alpine@sha256:b7f30d8810a8e10bd34cc12995c79dcdad81cd99c5ad6cfd0597e02683954de0

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