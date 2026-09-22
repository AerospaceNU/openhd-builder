FROM debian:stable-slim
ENV DEBIAN_FRONTEND=noninteractive
WORKDIR /openhd-builder
RUN dpkg --add-architecture arm64
RUN apt update
RUN apt install -y libpoco-dev:arm64 clang-format libusb-1.0-0-dev:arm64 libpcap-dev:arm64 libsodium-dev:arm64 libnl-3-dev:arm64 libnl-genl-3-dev:arm64 libnl-route-3-dev:arm64 libsdl2-dev:arm64 libgstreamer-plugins-base1.0-dev:arm64 libv4l-dev:arm64 ninja-build automake libtool python3-pip autoconf apt-transport-https ruby-dev cmake gstreamer1.0-plugins-bad:arm64 gstreamer1.0-plugins-ugly:arm64 "gcc-aarch64-linux-gnu" "g++-aarch64-linux-gnu"
RUN apt install -y git
COPY build.patch .
COPY build.sh .
RUN git config --global --add safe.directory /openhd
ENTRYPOINT ["/openhd-builder/build.sh"]
