FROM node:17.0.1

WORKDIR /usr/app
RUN mkdir layouts
COPY app.js package.json ./
COPY /layouts/index.html ./layouts
RUN npm install
EXPOSE 3000
CMD [ "node","app.js" ]


