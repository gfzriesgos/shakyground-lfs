FROM ubuntu:18.04

# for not having interaction on installation process
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get install python3.7 python3-pip gmt gmt-dcw gmt-gshhg python3-tk wget unzip -y && \
    pip3 install pandas scipy lxml h5py shapely zmq mock matplotlib decorator scipy psutil pygmt

WORKDIR /usr/share/git/shakyground

COPY . .
RUN unzip updated_lima_valparaiso_global_vs30_grd.zip && \
    mv updated_lima_valparaiso_global_vs30.grd global_vs30.grd && \
    rm updated_lima_valparaiso_global_vs30_grd.zip
