FROM gberube/a2c:latest

WORKDIR /usr/src/app
RUN chmod 777 /usr/src/app
RUN echo -e "#!/bin/bash\naria2c --conf-path=/aria2/aria2.conf &\nnginx -g 'daemon off;'" > /usr/src/app/start.sh && \
    chmod +x /usr/src/app/start.sh

EXPOSE 80

CMD ["bash", "/usr/src/app/start.sh"]
