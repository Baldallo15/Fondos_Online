FROM bluenviron/mediamtx:latest-ffmpeg

# Solo copiamos el archivo de configuración y el video
COPY mediamtx.yml /mediamtx.yml
COPY BMW.webm /BMW.webm
