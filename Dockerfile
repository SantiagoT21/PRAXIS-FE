#################
# Build the app #
#################
FROM node:alpine
#as front-build
WORKDIR /app
COPY . .
RUN npm install
ENTRYPOINT npm start
#RUN npm run build

################
# Run in NGINX #
################
#FROM nginx:alpine
#COPY --from=front-build /app/dist/praxis-fe /usr/share/nginx/html
#COPY docker-config/ /etc/nginx/conf.d/
#ENV API_URL = "localhost"
#CMD envsubst '$API_URL' < /etc/nginx/conf.d/default.template > /etc/nginx/conf.d/default.conf && nginx -g 'daemon off;'


