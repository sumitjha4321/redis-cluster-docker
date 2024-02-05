FROM redis:latest

COPY redis.conf  /conf/redis.conf

EXPOSE 6379
EXPOSE 16379

CMD [ "redis-server", "/conf/redis.conf" ]