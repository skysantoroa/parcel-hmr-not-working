FROM node:lts-buster

WORKDIR /home/node
COPY package.json package-lock.json ./
RUN npm ci
COPY . ./

ENTRYPOINT ["npm","run"]
CMD ["build"]