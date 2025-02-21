FROM node
LABEL app=my-node-app
WORKDIR app
COPY package-lock.json package.json ./
RUN npm install 
COPY . .
EXPOSE 3000
CMD node ./bin/www
