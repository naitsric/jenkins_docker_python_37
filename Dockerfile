FROM jenkins/jenkins:latest
USER root
RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y libncursesw5-dev
RUN apt-get install -y build-essential
RUN apt-get install -y zlib1g-dev libbz2-dev liblzma-dev libffi-dev libsqlite3-dev tk-dev libgdbm-dev libc6-dev checkinstall libssl-dev libpq-dev binutils libproj-dev gdal-bin
RUN cd /usr/src
RUN wget https://www.python.org/ftp/python/3.7.2/Python-3.7.2.tgz
RUN tar xzf Python-3.7.2.tgz
RUN cd Python-3.7.2 && ./configure && make && make install
RUN apt-get update
