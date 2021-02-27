FROM python:3.7.7-slim-buster
LABEL maintainer="Nitai"

RUN apt-get update && apt-get install -y --no-install-recommends git gcc make zlib1g-dev ca-certificates \
	&& git clone https://github.com/gpac/gpac.git gpac \
	&& cd gpac && ./configure --disable-opengl --use-js=no --use-ft=no --use-jpeg=no --use-png=no --use-faad=no --use-mad=no --use-xvid=no --use-ffmpeg=no --use-ogg=no --use-vorbis=no --use-theora=no --use-openjpeg=no \
	&& make && make install \
	&& cp bin/gcc/libgpac.so /usr/local/lib \
	&& cd .. && rm -rf gpac

COPY join_videos.py /join_videos.py
CMD [ "join_videos.py" ]
ENTRYPOINT [ "python3" ]
