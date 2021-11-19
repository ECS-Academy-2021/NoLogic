FROM node:latest
WORKDIR /app
COPY package*.json /app
RUN npm install
COPY app.js /layouts/index.html/ /app/
EXPOSE 3000
CMD ["node", "app.js"]

# Base image 
# entrypoint : perminant default 
#  . >> current working directory where the Dockerfile is 
# Copy : copies files from build context 
# ENV sets enviornment variables inside conatiner (DON'T PUT SECRETS )
# RUN : makes a container >> does stuff >> commits it 