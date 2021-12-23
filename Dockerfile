FROM ubuntu:20.04

RUN apt-get update && apt-get install -y tzdata
ENV TZ=Asia/Tokyo 

RUN apt-get update && \
    apt-get install -y python3 python3-pip && \
    apt-get install -y portaudio19-dev

RUN pip install update && \
    pip install numpy && \
    pip install librosa && \
    pip install matplotlib && \
    pip install pyaudio && \
    pip install pyrubberband && \
    pip install scipy && \
    pip install pyworld

RUN apt-get update && apt-get install -y \
    xvfb x11vnc python-opengl icewm

WORKDIR /root
CMD ["bash"]