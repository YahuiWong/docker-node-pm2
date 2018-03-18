FROM node:9.8.0

MAINTAINER ArthurWang "yahui9119@live.com"

RUN npm install -g pm2@2.10.1

VOLUME ["/app"]
ADD start /start
RUN chmod 755 /start
CMD ["/start"]

EXPOSE 80
EXPOSE 443
