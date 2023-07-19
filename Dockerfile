FROM nginx:latest
RUN "apt-get install iputils-ping" && \
WORKDIR /app
WORKDIR myserve
CMD ["localhost"]
ENTRYPOINT ["ping","-c4"]