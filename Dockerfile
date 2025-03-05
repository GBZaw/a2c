FROM gberube/a2c:latest

WORKDIR /usr/src/app
RUN chmod 777 /usr/src/app
COPY start.sh /usr/src/app/start.sh
RUN chmod +x /usr/src/app/start.sh

EXPOSE 80

CMD ["bash", "/usr/src/app/start.sh"]
