FROM ubuntu:18.04

# for not having interaction on installation process
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get install python3.7 python3-pip git gmt gmt-dcw gmt-gshhg python3-tk wget unzip -y

RUN pip3 install pandas scipy lxml h5py shapely zmq mock matplotlib decorator scipy psutil pygmt

RUN mkdir -pv /usr/share/git/shakyground

RUN cd /usr/share/git/shakyground && wget https://earthquake.usgs.gov/static/lfs/data/global_vs30_grd.zip && unzip global_vs30_grd.zip -d . && rm global_vs30_grd.zip

RUN cd /usr/share/git/shakyground && git init . && git remote add origin https://github.com/gfzriesgos/shakyground.git --fetch && git checkout dockerhub
