FROM        ubuntu:16.04
MAINTAINER  Malcolm Ramsay <malcolm@malramsay.com>

RUN     apt-get update && apt-get -y install \
        software-properties-common && \
        add-apt-repository ppa:mc3man/xerus-media && \
        add-apt-repository ppa:stebbins/handbrake-releases && \
        apt-get update && apt-get -y install \
        handbrake-cli \
        mencoder \
        mp4v2-utils \
        mplayer \
        ruby \
        && apt-get clean && \
        gem install video_transcoding

COPY    transcoder.py /root/transcoder.py

CMD     python /root/transcoder.py
