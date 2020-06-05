FROM ubuntu:18.04

# for not having interaction on installation process
ENV DEBIAN_FRONTEND noninteractive

WORKDIR /root

COPY requirements.txt .

RUN apt-get update && \
    apt-get install python3.7 python3-pip gmt gmt-dcw gmt-gshhg python3-tk unzip -y && \
    pip3 install -r requirements.txt

WORKDIR /usr/share/git/shakyground

COPY . .
RUN unzip updated_lima_valparaiso_global_vs30_grd.zip && \
    mv updated_lima_valparaiso_global_vs30.grd global_vs30.grd && \
    rm updated_lima_valparaiso_global_vs30_grd.zip
