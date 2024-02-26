# base image from docker hub
FROM node:14-alpine
# set the working directory to /app
WORKDIR /app
# copy all folder to the new working directory
COPY . .
# set env variable 
ENV NODE_ENV=production DB_HOST=item-db
# run npm install and build 
RUN npm install --production --unsafe-perm && npm run build
# expose port 8080 to host
EXPOSE 8080
# run npm start
CMD ["npm","start"]