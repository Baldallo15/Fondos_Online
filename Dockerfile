FROM bluenviron/mediamtx:latest-ffmpeg

COPY mediamtx.yml /mediamtx.yml
COPY BMW.webm /BMW.webm

# El comando inicia MediaMTX y luego envía el video en bucle a la ruta /live
CMD ["sh", "-c", "/mediamtx & sleep 2 && ffmpeg -re -stream_loop -1 -i /BMW.webm -c copy -f rtsp rtsp://localhost:8554/live"]

