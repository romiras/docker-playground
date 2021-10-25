
FROM redis:${REDIS_VERSION:-6.0-alpine}

COPY docker-entrypoint.sh /usr/local/bin
COPY run.sh /usr/local/bin

ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["run.sh"]
