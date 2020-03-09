FROM ubuntu:18.04
RUN apt-get update
RUN apt-get install -qy \
        curl \
        python3 \
        python3-pip \
        groff
RUN python3 -m pip install --upgrade pip
RUN python3 -m pip install --upgrade awscli awscli s3cmd python-magic

RUN curl https://s3.amazonaws.com/session-manager-downloads/plugin/latest/ubuntu_64bit/session-manager-plugin.deb -o session-manager-plugin.deb && dpkg -i session-manager-plugin.deb
ENV LC_ALL C.UTF-8
ENV LANG C.UTF-8
WORKDIR /root/workdir
ENTRYPOINT ["aws"]
