FROM alpine:latest

# Instalar FFmpeg, MediaMTX y dependencias necesarias
RUN apk add --no-cache ffmpeg curl bash

# Descargar la última versión de MediaMTX
RUN curl -L https://github.com/bluenviron/mediamtx/releases/download/v1.6.0/mediamtx_v1.6.0_linux_amd64.tar.gz | tar -xz -C /usr/local/bin/

# Copiar archivos de configuración
COPY mediamtx.yml /etc/mediamtx.yml

# Puerto RTSP
EXPOSE 8554

# Comando para iniciar MediaMTX
CMD ["mediamtx", "/etc/mediamtx.yml"]

