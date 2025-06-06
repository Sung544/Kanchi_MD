FROM node:lts-buster
RUN git clone https://github.com/Sung544/Kanchi_MD/root/Sung544
WORKDIR /root/Sung544
RUN npm install && npm install -g pm2 || yarn install --network-concurrency 1
COPY . .
EXPOSE 9090
CMD ["npm", "start"]
