FROM gberube/a2c:latest
WORKDIR /usr/src/app
RUN chmod 777 /usr/src/app
COPY . .
EXPOSE 80
CMD ["/start.sh"]
