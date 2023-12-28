FROM node:16-alpine
RUN apk add g++ make py3-pip

# Create app directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# Install app dependencies
COPY package.json /usr/src/app/
COPY package-lock.json /usr/src/app/
COPY .npmrc /usr/src/app/
RUN npm install

# Bundle app source
COPY . /usr/src/app

EXPOSE 8080

RUN npm run build
USER node
CMD [ "node", "dist/main" ]
