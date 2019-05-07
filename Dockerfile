FROM ubuntu:18.04
RUN apt-get update
RUN apt-get install -qy \
        curl \
        python3 \
        python3-pip \
        groff
RUN pip3 install --upgrade pip
RUN pip3 install --upgrade awscli s3cmd python-magic
RUN curl https://s3.amazonaws.com/session-manager-downloads/plugin/latest/ubuntu_64bit/session-manager-plugin.deb -o session-manager-plugin.deb && dpkg -i session-manager-plugin.deb
ENV LC_ALL C.UTF-8
ENV LANG C.UTF-8
WORKDIR /root/workdir
ENTRYPOINT ["aws"]
