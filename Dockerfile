FROM nginx:latest
RUN "apt-get install iputils-ping" && \
WORKDIR /app
CMD ["localhost"]
ENTRYPOINT ["ping","-c4"]