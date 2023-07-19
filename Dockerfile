ARG TAG=latest
FROM nginx:$TAG
RUN "apt-get update" && \
    "apt-get install figlet"
    "apt-get install iputils-ping"
WORKDIR /reverse
WORKDIR app
EXPOSE 8080
COPY . /usr/share/nginx/html/index.html
LABEL OWNER=MONISH
CMD ["localhost"]
ENTRYPOINT ["ping","-c4"]