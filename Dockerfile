#################
# Build the app #
#################
FROM node:alpine
WORKDIR /app
COPY . .
RUN npm install
EXPOSE 4200
ENTRYPOINT npm start
