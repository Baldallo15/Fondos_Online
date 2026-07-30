FROM bluenviron/mediamtx:latest-ffmpeg

# Copiamos la configuración y el video
COPY mediamtx.yml /mediamtx.yml
COPY BMW.webm /BMW.webm

# Ejecutamos mediamtx indicando el archivo de configuración directamente
CMD ["/mediamtx", "/mediamtx.yml"]
