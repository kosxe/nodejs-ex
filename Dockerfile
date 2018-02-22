FROM node:carbon

# create app directory

WORKDIR /usr/src/app

# install app dependencies
# a wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json ./

RUN npm install
# for production run "RUN npm install --only=production" instead

# Bundle app source

COPY . .
EXPOSE 8080
CMD ["npm","start"]

