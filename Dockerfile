FROM node:14

WORKDIR /usr/src/app

COPY package.json .
RUN npm install 
COPY . .
# Install Maven
RUN apt-get update && apt-get install -y maven

EXPOSE 3000

CMD ["node", "index.js"]
