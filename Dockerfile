FROM ubuntu

RUN apt-get update && apt-get install -y \
git \
python \
python-cheetah

RUN git clone https://github.com/midgetspy/Sick-Beard.git /root/Sick-Beard

ENV PATH /root/Sick-Beard/:$PATH

VOLUME ["/data"]

EXPOSE 8081

CMD ["SickBeard.py","--datadir=/data"]
