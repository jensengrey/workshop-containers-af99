FROM ubuntu:22.04

RUN apt-get update && apt-get upgrade && echo "ubuntu:22.04"

RUn apt-get install --yes libboost-all-dev \
	zlib1g-dev \
	libpng-dev \
	libjpeg-dev \
	libtiff-dev \
	libopenexr-dev \
	build-essential \
	make \
	cmake \
	git

RUN git clone --branch v3.8.0-beta.2 https://github.com/POV-Ray/povray
RUN cd povray/unix && \
	./prebuild.sh && \
	cd .. && \
	./configure COMPILED_BY="povray-builder" && \
	make -j4 && \
	make install
