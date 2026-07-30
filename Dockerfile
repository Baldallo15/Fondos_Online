FROM bluenviron/mediamtx:latest-ffmpeg

WORKDIR /app

COPY mediamtx.yml /mediamtx.yml
COPY entrypoint.sh /app/entrypoint.sh

RUN chmod +x /app/entrypoint.sh

EXPOSE 8554 1935 8888 8889

ENTRYPOINT ["/app/entrypoint.sh"]
